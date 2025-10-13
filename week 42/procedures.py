import mysql.connector
from dotenv import load_dotenv,dotenv_values


load_dotenv()
config = dotenv_values(".env")

min_pop = 0
max_pop = 0

while max_pop <= min_pop:
    min_pop = int(input("Please enter minimum population: "))
    max_pop = int(input("Please enter maximum population: "))
    if max_pop <= min_pop:
        print(f"Bad values, please re-enter...")

mydb = mysql.connector.connect(
    host=config["DB_ADDRESS"],
    user=config["PYTHON_DB_USER"],
    passwd=config["abc123"],
    database=config["DB_NAME"]
)

cursor = mydb.cursor()

cursor.callproc(config['PYTHON_STORED_PROCEDURE'], [min_pop, max_pop])

for result in cursor.stored_results():
    records = result.fetchall()
    for row in records:
        print(row)