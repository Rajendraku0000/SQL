use sakila;
show tables;

create view View1 as
select * from test where id >3;

select * from test;
insert into View1 values(5,"raj");

select * from new_table;

select sum(emp_name) from new_table
group by ROLLUP (emp_name);



show tables;
select * from emp_record;


select name,sum(salary)as total_amount from emp_record
group by (name) with rollup;