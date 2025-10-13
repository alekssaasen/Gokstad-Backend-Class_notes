import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt

connection = mysql.connector.connect(
    host='localhost',
    user='root',
    password='gokstad',
    database='world'
)


query = """
SELECT city.ID AS CityID,
       city.Name AS CityName, 
       city.Population, 
       country.Continent
FROM 
    city
JOIN 
    country ON city.CountryCode = country.Code;
"""

dataframe = pd.read_sql_query(query,connection)

dataframe.plot.scatter(x="CityID", y="Population")
plt.show()