create database company;
use company;
create table Employee(emp_id int,Name varchar(20),Age int,Gender varchar(2),Salary double);

create table Departments(emp_id int,Dept_id varchar(10),Dept_Name varchar(30));

create table Project(Project_name varchar(20));
show tables;


insert into Employee(emp_id,Name,Age,Gender,Salary) values(567983,"Joey",30,"M",65600);

insert into Employee(emp_id,Name,Age,Gender,Salary) values(567988,"Ross",31,"M",90600);

insert into Employee(emp_id,Name,Age,Gender,Salary) values(567987,"Chandler",33,"M",70600);


insert into Departments(emp_id,Dept_id,Dept_name) values (567893,"QWEDF45","Accountant");

insert into Departments(emp_id,Dept_id,Dept_name) values (567898,"QWEDF75","Biotechnoogy");

insert into Departments(emp_id,Dept_id,Dept_name) values (567897,"QWEDF95","Recruiter");
/**
Here we use (*) because we want to select all the attributes from the table Employee
*/
select* from Employee; 
select* from Departments;
/**
Here we use Name,id,Salary attribute because we want to get Name,id,Salary attribute from Employee table
*/
select Name from Employee;
select emp_id from Employee;
select Salary from Employee;

/**
To select two attributes at a  time from a same table
*/
select Name,emp_id from Employee;

/**
This is used when we want to select all attributes from n tables
*/
select* from Employee,Departments;


/**
To delete only values in the table
*/
truncate Project;

/**
To delete the whole table with structure
*/
drop table Project;

/**
To rename a tablename
*/
rename table Employee to Employees;

Select * from Employees;

/**
To add a coloumn we use alter function
*/
alter table Employees add column doj int;
desc Employees;

Select * from Employees,Departments;

/**
To add a coloumn we use alter function 
use add function
*/
alter table Employees add column doj date;
desc Employees;

-- use modify function change the datatype of column
alter table Employees modify column doj int;
desc Employees;

-- use rename function to change coloumn name
alter table Employees rename column doj to dateofjoininig;
desc Employees;

-- use drop function delete a column
alter table Employees drop column dateofjoininig;
desc Employees;


alter table Employees rename column emp_id to employee_id;
desc Employees;

alter table Employees rename column Name to FullName;
desc Employees;

alter table Employees rename column Gender to Sex;
desc Employees;

alter table Employees rename column Salary to Income;
desc Employees;

alter table Employees modify column Sex varchar(1);
desc Employees;

desc Departments;

alter table Departments rename column emp_id to employee_id;
desc Departments;

-- to delete a similar attributes from a table
delete from Departments where employee_id=567893;
select * from Departments;

/** 
update a value in table set the value and conditions table
if there is no condition it will update the whole coloumn
*/
update Departments set Dept_name="Sarcasm" where employee_id=567897;
select * from Departments;

update Employees set FullName="RossDino" where FullName="Ross";
select * from Employees;

-- There is no condition so it will update the whole coloum of Sex from M to F
update Employees set Sex="F";
Select * from Employees;

update Employees set Sex="M";
Select * from Employees;

Select Income from Employees where employee_id=567983 && FullName="Joey";

Select Income from Employees where FullName="RossDino" || employee_id=567983 ;