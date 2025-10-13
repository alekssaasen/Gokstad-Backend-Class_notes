DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;

CREATE TABLE Job
(
    JobID   int NOT NULL,
    Name    varchar(255),
    Salary  float,
    PRIMARY KEY (JobID)
);

INSERT INTO Job
VALUES (1, 'CEO', 9000000),
       (2, 'Manager', 1000000),
       (3, 'Marketing Rep.', 1250000),
       (4, 'Janitor', 400000),
       (5, 'Programmer', 450000),
       (6, 'Cyber Sec. Expert', 600000);

CREATE TABLE Person
(
    PersonID  int NOT NULL,
    JobID     int,
    FirstName varchar(255),
    LastName  varchar(255),
    Address   varchar(255),
    City      varchar(255),
    PRIMARY KEY (PersonID),

    FOREIGN KEY (JobID) REFERENCES Job (JobID)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);

INSERT INTO Person
VALUES
    (1,1,'Craig','Marais','Ammerud','Oslo'),
    (2, 2, 'Steve', 'Bobs', null,'LA'),
    (3,5, 'Dewald','Els', null, 'Oslo');

# UPDATE Job
# SET Salary = 650000
# WHERE Name = 'Programmer';
#
# DELETE FROM Job
# WHERE JobID = 2;

ALTER TABLE Person
ADD Active boolean DEFAULT TRUE;

UPDATE Person
SET Person.Active = FALSE
WHERE PersonID = 3;

SELECT  FirstName, Lastname, Job.Name
FROM Person
JOIN Job on Person.JobID = Job.JobID
WHERE Person.Active = TRUE