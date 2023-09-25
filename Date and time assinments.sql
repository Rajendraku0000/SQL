

-- Q1  find those use where bith_date grather then emp_no 10003 of birth_date and  hire_date less then emp_no 10005 of hire_date 

use employees;
show tables;
select * from employees;
select *  from employees
where birth_date > (select birth_date from employees where emp_no = 10003)  -- '1959-12-03'
and hire_date < (select hire_date from employees where emp_no = 10005);  --  '1989-09-12'






--  Q2 find those user where hire year is grather then among all the hire year emp_no 10030 to 10070
select * from employees
where hire_date in (select hire_date from employees
where emp_no between 10030 and 10070);

select birth_date from employees
where emp_no between 10030 and 10070;





-- Q3  find the emp_no , dept_no and dept_name of those user who has work in company more then 28 year
select * from employees;
select * from dept_emp;
select * from departments;
show tables;

select x.emp_no,a.dept_no , b.dept_name , TIMESTAMPDIFF(year,hire_date,current_date()) as total_year from employees as x join  dept_emp as a using(emp_no)
join departments as b
where a.dept_no = b.dept_no and TIMESTAMPDIFF(MONTH,hire_date,current_date()) >28 ;





-- Q4  find out the emp_no , dept_no  and name of employees and the next working monday from hire_date
use employees;
show tables;
select  * from titles;
select * from current_dept_emp;


SELECT employees.emp_no , employees.first_name , dept_emp.dept_no , hire_date,
dayofweek(hire_date) as day_of_week ,
dayname(hire_date),
DATE_ADD(hire_date, INTERVAL(9-DAYOFWEEK(hire_date)) DAY) AS NEXTMONDAY, -- next Monday Date 
dayname(DATE_ADD(hire_date, INTERVAL (9-DAYOFWEEK(hire_date)) DAY)) as nextdayname ,  --  Dayname
dayofweek(DATE_ADD(hire_date, INTERVAL (9-DAYOFWEEK(hire_date)) DAY)) as nextdayweek
from  employees
inner join dept_emp using(emp_no);






-- Q5   find out the emp_no dept_no and name of employees who has work in company grather then 400 month 
use employees;
select * from dept_emp;
SELECT employees.emp_no , employees.first_name , dept_emp.dept_no , hire_date,
TIMESTAMPDIFF(month,hire_date,current_date()) as total_month 
from  employees
inner join dept_emp using(emp_no)
where TIMESTAMPDIFF(month,hire_date,current_date()) > 400 ;