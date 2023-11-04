create database sql_question;
use sql_question;
show tables;

--  1st create tables 

CREATE TABLE Employee (
EmpID int NOT NULL,
EmpName Varchar(20),
Gender Char, 
Salary int,
City Char(20) );

CREATE TABLE EmployeeDetail (
EmpID int NOT NULL,
Project Varchar(20),
EmpPosition Char(20),
DOJ date );




-- insert data into tables 
INSERT INTO Employee
VALUES (1, 'Arjun', 'M', 75000, 'Pune'),
(2, 'Ekadanta', 'M', 125000, 'Bangalore'),
(3, 'Lalita', 'F', 150000 , 'Mathura'),
(4, 'Madhav', 'M', 250000 , 'Delhi'),
(5, 'Visakha', 'F', 120000 , 'Mathura'); 


INSERT INTO EmployeeDetail
VALUES (1, 'P1', 'Executive', '2019-01-26'),
(2, 'P2', 'Executive', '2020-05-04'),
(3, 'P1', 'Lead', '2021-10-21'),
(4, 'P3', 'Manager', '2019-11-29'),
(5, 'P2', 'Manager', '2020-08-01');


select * from employee;
select * from EmployeeDetail;



-- 1(a): Find the list of employees whose salary ranges between 2L to 3L.

select * from employee
where Salary between 200000 and 300000;
   
select * from employee
where salary >200000 and salary <300000;


-- Q1(b): Write a query to retrieve the list of employees from the same city.

select * from employee E1,employee E2
where e1.city= e2.city and e1.empid!=e2.empid;

-- Q1(c): Query to find the null values in the Employee table. 
select * from employee
where empid is null;

select * from employee;


-- Q2(a): Query to find the cumulative sum of employee’s salary.
select * ,
sum(salary) over(order by empid) as commulatiove_sum
from employee; 

-- Q2(b): What’s the male and female employees ratio.
select 
sum(case when gender = "M" then 1 else 0 end) *100 / count(*) as new,
sum(case when gender = "F" then 1 else 0 end) *100 / count(*) as female_precentage
from employee;



-- Q2(c): Write a query to fetch 50% records from the Employee table.
select * from employee
where empid>=(select count(empid)/2 from employee);

-- Q3: Query to fetch the employee’s salary but replace the LAST 2 digits with ‘XX’ 
-- i.e 12345 will be 123XX
select * from employee;
select replace(salary,right(salary,2),"#") as new_columns from employee;
select right(salary,1) from employee;

-- Q4: Write a query to fetch even and odd rows from Employee table.
select * ,
case
	when empid%2=0 then 'even'
    else 'odd'
    end "new_columns"
from employee
;
-- if you want to fatch even number 
select * from employee
where empid%2=0; 

-- if you want to fatch odd number 

select * from employee
where empid%2!=0; 

/*Q5(a): Write  a query to find all the Employee names whose name:
• (I) Begin with ‘A’ */

	select * from employee
	where empname like 'A%';

/* • (II) Contains ‘A’ alphabet at second place  */

	select * from employee
	where empname like '_A%';

/* • (III) Contains ‘Y’ alphabet at second last place */

	select * from employee
	where empname like '%Y_';
    
/* • (IV) Ends with ‘L’ and contains 4 alphabets  */

	select * from employee
	where empname like '____L';
    
/* • (V) Begins with ‘V’ and ends with ‘A’ */ 

	select * from employee
    where empname like 'V%A';
    
    
-- Q6: Find Nth highest salary from employee table with and without using the TOP/LIMIT keywords.

select * from employee
where salary = (select max(salary) from employee);

-- Q7(a): Write a query to find and remove duplicate records from a table.


-- Q7(b): Query to retrieve the list of employees working in same project.


-- Q8: Show the employee with the highest salary for each project
create table new_temporary_table as (
select * ,
row_number() over(partition by empPosition order by salary desc) as ranking 
from employee inner join employeeDetail using(empid) );
 
 select * from new_temporary_table 
 where ranking =1;


-- Q9: Query to find the total count of employees joined each year
select * from employee;

