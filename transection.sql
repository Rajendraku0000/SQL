use sakila;

create table test(id int, name varchar(20));

insert into  test values(10,"hey"),(20,"abc"),(30,"def");
select * from sakila.test;

set sql_safe_updates=0;
update test set name = "rajendra" where id =10;
select * from test;

select @@autocommit;
set @@autocommit=0;

update test set name = "manish" where id =20;
update test set name = "rajendra" where id =30;

commit ;
select * from test;
set @@autocommit=0;

-- start transaction;

update test set name = "b" where id =20;
savepoint b;
rollback  ;
create table n(id int);

select * from test;
-- id auto commit 1 he our 

update test set name = "jdbjksd" where id =10;
commit ;
 rollback;