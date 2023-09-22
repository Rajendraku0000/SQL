--  SUB Query : this is a type of query like nested query that is generate the output for the outer query


use employees;
show tables;
select * from employees;

-- 1. Scaler Sub Query  :>
-- when inner sub query generate Singal output that Scaler sub query 

/* for example we need to find those use whom is birth_date is "1957-05-23" and hire_date = "1989-02-10" */
select * from employees
where emp_no = (select  emp_no from employees where birth_date = "1957-05-23" and hire_date = "1989-02-10");


-- 2. Column Sub Query :>
						--  when subquery return more then 1 result then use any and in operator


-- With In :>
select * from titles
where title in (select title from titles where emp_no in (10001,10002));   -- return only match values that is generate by subquery

--  With Any  :>
select * from salaries
where salary = any (select salary from salaries where emp_no = 10002);  --  isme subquery re return result ke equal any result aayega 

select * from salaries
where salary > any (select salary from salaries where emp_no = 10002);   --  sabse choti se badi values return hogi

select * from salaries
where salary < any (select salary from salaries where emp_no = 10002);    --  sabse badi values me se small values return hogi 


-- With ALL
select * from salaries
where salary = all (select salary from salaries where emp_no = 10002)     -- isme subquery re return result ke equal any result aayega 
order by salary;

select * from salaries
where salary > all (select salary from salaries where emp_no = 10002)   -- sabse maximum  se badi values return hogi
order by salary ;

select * from salaries
where salary < all (select salary from salaries where emp_no = 10002);   -- sabse minimum   se badi values return hogi



--  3.Row sub query  
				-- that is use for mapping tha value row wise when generate the output inner query multiple column output
select emp_no , title ,year(from_date)
from titles
where title="Manager"
and (emp_no,year(from_date)) in (select emp_no ,year(from_date) from titles where title <> "Manager");

