--DDL queries

CREATE DATABASE P315

DROP DATABASE P315

USE P315;

CREATE TABLE Students(
	Id int,
	Name nvarchar(50),
	Surname nvarchar(100)
)

DROP TABLE Students

ALTER TABLE Students 
ADD Age int,GroupName nvarchar(10)

ALTER TABLE Students
DROP COLUMN GroupName

EXEC sp_rename Stu,Students

EXEC sp_rename 'Students.Surname','Lastname'

--DML

INSERT INTO Students
VALUES(1,'Fikret','Javadov',25)

INSERT INTO Students
VALUES(2,'Kenan','Memmedli',25),
	  (3,'Tural','Elesgerli',22),
	  (4,'Javid','Mecidov',29)


INSERT INTO Students (Id,Name,Lastname)
VALUES(5,'MehemmedEli','Abbaszade')

SELECT * FROM Students

Select Name,Lastname FROM Students

Select Name 'Firstname',Lastname 'Surname' FROM Students

SELECT * FROM Students
--WHERE Age>=25
--WHERE Age is Null
--WHERE Age is Not Null
--WHERE Age>=25 AND Name='Fikret'
--WHERE Age>25 OR Len(Name)>9
--Where Age>25 OR Age is Null
--WHERE Id BETWEEN 2 AND 5
--WHERE Id in(3,1)
--WHERE Id=(Select Id FROM Students Where Name='MehemmedEli')

UPDATE Students SET Age=20,Name='MuhammedAli'
Where Id=5

DELETE FROM Students
WHERE Age=20
