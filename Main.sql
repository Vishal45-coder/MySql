update database Hospital;
show databases;
use Hospital;
create table Patient(Name varchar(20),Age int,Gender varchar(1),Disease varchar(30),Wardno int);
create table Doctor(Name varchar(20),Age int,Gender varchar(1),Employee_id int,specialization varchar(30),Salary double,Joining_date int);
create table Medicine(Name varchar(30),Mfg int,Exp int,Cost double,Warning varchar(20),problem varchar(10));
create table payment(Amount double,mode varchar(10),Schemes varchar(20),paid double,due double);
show tables;