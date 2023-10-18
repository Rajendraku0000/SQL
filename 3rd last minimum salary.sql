show databases;
use employees;
show tables;

select * from salaries;
select * from salaries
order by salary desc ;

select * from salaries
where salary = (select max(salary) from salaries where salary != (select max(salary) from salaries));




select * from salaries
order by salary ;


select min(salary) from 
(select * from salaries where salary != (select min(salary) from salaries)) as t 
where salary != (select min(salary) from salaries where salary != (select min(salary) from salaries)) ;



select * from (select *,row_number() over(order by salary asc) as ranking from salaries ) as new_table
where ranking = 3;


select instr('rajendra','d');




select substr('tushar',2,3) ;














create table  emp_id (id int,ename varchar(20),salary int);
insert into emp_id values(10,'rajendra',10000);
insert into emp_id values(20,"ramgopal",20000);
insert into emp_id values(30,'navi',30000);
insert into emp_id values(40,'subham',40000);

create table emp_dept(dept_id int ,emp_id int ,dept_name varchar(20));
insert into emp_dept values(1,10,'hr');
insert into emp_dept values(2,20,"marketing");
insert into emp_dept values(3,50,'sales');
insert into emp_dept values(4,60,'sales');
select * from emp_dept;

select * from emp_id
where id in (select emp_id from emp_dept)

