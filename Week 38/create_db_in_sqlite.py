import sqlite3

connection = sqlite3.connect('pets.db')

cursor = connection.cursor()

query = """
CREATE TABLE Pets (
    PetId SERIAL,
    PetName varchar(100),
    PRIMARY KEY (PETId));
"""

cursor.execute(query)

insert_query = """
INSERT INTO Pets
    (PetName)
    VALUES 
    ('Fluffykins'),
    ('Steve'),
    ('Benji'),
    ('Spot'),
    ('Wilfred'),
    ('Charlie')
"""

cursor.execute(insert_query)
connection.commit()


cursor.close()
connection.close()
