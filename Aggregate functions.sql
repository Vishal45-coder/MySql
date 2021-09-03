use college;

--shows the sum of the values in the present coloumn
select sum(Age) from student;

--shows the max value for the present coloumn
select max(Age) from student;

--Shows the min value of the present coloumn
select min(Age) from student;

--Shows how many values are present for age (including duplicate values)
select count(Age) from student;
--Shows how many values are present for age (without duplicates)
select count(Distinct Age) from student;



--this will change the name of coloum from sum(Age) to Age_Sum
select sum(Age) as Age_sum from student;

--Max(Age) to Max_Age
select max(Age) as Max_Age from student;

select min(Age) Min_Age from student;

select count(Age) Total_Age from student;

select count(Distinct Age) as Different_age from student;