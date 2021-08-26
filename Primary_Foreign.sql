create database College;
use College;
create table student
(
     ID int not null unique,
     FirstName varchar(255),
     LastName varchar(255),
     Age int not null check(Age>17),
     Grade varchar(2) default "C",
     Sub_id int ,
     foreign key(Sub_id) references subjects(Sub_id)
);
insert into student(ID,FirstName,LastName,Age,Grade,Sub_id) values (1,"Joey","Fino",18,"A",1987);
insert into student(ID,FirstName,LastName,Age,Sub_id) values (2,"Ross","Dino",18,6789);
insert into student(ID,FirstName,LastName,Age,Sub_id) values (3,"Chandler","laug",19,9087);
insert into student(ID,FirstName,LastName,Age,Sub_id) values(4,"pheebs","",20,189);
--THis below will not execute because the age is less than the constraint value
insert into student(ID,FirstName,LastName,Age) values (4,"Rachel","",17);

select *from student;

create table subjects(
    Sub_Name varchar(255) not null,
    Sub_id int,
    unique(Sub_Name),
    primary key(Sub_id)
);

insert into subjects(Sub_Name,Sub_id) values("Biology",1987);
insert into subjects(Sub_Name,Sub_id) values("Food",6789);
insert into subjects(Sub_Name,Sub_id) values("Economics",9087);
insert into subjects(Sub_Name,Sub_id) values("Java",null);
select *from subjects;

truncate student;
drop table subjects;
drop database college;