create database student;
use student;
create table student
(
     ID int not null,
     FirstName varchar(255),
     LastName varchar(255),
     Age int not null check(Age>17),
     Grade varchar(2) default "C",
     unique(ID)
);
insert into student(ID,FirstName,LastName,Age) values (1,"Joey","Fino",18);
insert into student(ID,FirstName,LastName,Age) values (2,"Ross","Dino",18);
insert into student(ID,FirstName,LastName,Age,Grade) values (3,"Chandler","laug",19,"A");
--THis below will not execute because the age is less than the constraint value
insert into student(ID,FirstName,LastName,Age) values (4,"Rachel","",16);

select *from student;

drop table student;
truncate table student;

