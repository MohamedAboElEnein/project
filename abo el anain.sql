drop database clinic;
create database clinic;
use clinic;

CREATE TABLE doctors (
  doctorID INT NOT NULL PRIMARY KEY,
  name VARCHAR(45) NULL,
  jop VARCHAR(45) NULL,
  age INT NULL,
  salary INT NULL
  );

CREATE TABLE patients (
  patientsID INT NOT NULL PRIMARY KEY,
  name VARCHAR(45) NULL,
  age INT NULL,
  type varchar(45) null,
  doctorID INT NOT NULL
  ); 
  
CREATE TABLE nurses (
  nursesID INT NOT NULL PRIMARY KEY,
  name VARCHAR(45) NULL,
  age INT NULL,
  salary INT NULL,
  doctorID INT NOT NULL
  ); 
alter table patients add foreign key (doctorID) references doctors(doctorID);
alter table nurses add foreign key (doctorID) references doctors(doctorID);


Insert into doctors Values (1, "John Dorian", "Hosipatal Manager", 60, 10000);
Insert into doctors Values (2, "Elliot Reid", "staff header", 50, 8000);
Insert into doctors Values (3, "Christopher Turk", "heart doctor 1", 45, 7000);
Insert into doctors Values (4, "Todd Quinlan", "surgeon", 40, 5000);
Insert into doctors Values (5, "john wen", "Anesthetization doctor", 40, 5000);

Insert into patients Values (106, "Dude mister", 50, "male", 1);
Insert into patients Values (107, "Molly Clock", 43, "female", 2);
Insert into patients Values (108, "Cox", 70, "female", 2);
Insert into patients Values (109, "Bob Kelso", 55, "male", 5);

Insert into nurses Values (6, "Keith Dude mister", 35, 3000, 5);
Insert into nurses Values (7, "Molly Clock", 35, 3000, 4);
Insert into nurses Values (8, "Percival Cox", 30, 3000, 2);
Insert into nurses Values (9, "Bob Kelso", 30, 3000, 1);

select doctorID,name from doctors;
select nursesID,name from nurses;
select name from patients;
select jop from doctors;
select age from doctors;
select salary from doctors;
select salary from nurses;
select age from nurses;
select name from nurses;
select age from patients;
select type from patients;
select age from doctors where age <45;
select salary from doctors where salary > 7000;
select age from nurses where age > 30;
select salary from nurses where salary = 3000;
select id from nurses where id < 7;
select type from patients where type = "female";
select age from patients where age < 55;
select * from doctors;
select * from nurses;

select age from doctors where salary =(select max(salary) from doctors);
select age from nurses where salary =(select min(salary) from nurses);

update doctors set name = "mohammed" where doctorID = 3;
update nurses set age = 20 where nursesID = 9;
update nurses set salary = 1000 where nursesID = 7;
update patients set name = "mohsen" where patientsID = 103;
update doctors set salary = 5050 where doctorID = 5;

delete from nurses where nursesID = 8 ; 
delete from patients where patientsID = 107 or patientsID = 108; 
delete from nurses where nursesID > 8; 
delete from patients where patientsID = 106 ; 
delete from doctors where doctorID = 2; 


