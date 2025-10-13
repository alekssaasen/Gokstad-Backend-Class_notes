import mysql.connector

connection = mysql.connector.connect(
    host='localhost',
    user='root',
    password='gokstad',
    database='employees'
)

cursor = connection.cursor()

query = """
SELECT  FirstName, Lastname, Job.Name, Job.Salary
FROM Person
JOIN Job on Person.JobID = Job.JobID
WHERE Person.Active = TRUE;
"""

cursor.execute(query)

# Process data
rows = cursor.fetchall()

cursor.close()
connection.close()

#for row in rows:
    #print(f"{row[0]} {row[1]} has the job of {row[2]}")

for firstname, lastname, title, salary in rows:
    print(f"{firstname} {lastname} has the job of {title}. Salary:  {salary}" )