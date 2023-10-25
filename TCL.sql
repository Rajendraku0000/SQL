use sakila;
show databases;

show tables;

select @@autocommit;
set autocommit =0;

start transaction ;
desc test;
set sql_safe_updates=0;
update test 
set name="kumar"
where id = 1;

savepoint save_udpate;

update test 
set name="kuma"
where id = 2;

savepoint save_update1;

rollback ;

select * from test;


select * from test;



use sakila;
rename table test to emp_test;
select * from emp_test;

show databases;
use rajendra;show tables;

select * from customer;
