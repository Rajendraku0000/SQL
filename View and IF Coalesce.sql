use sakila;
show tables;

select * from actor_views;

create table test (
id int,
name varchar(20));

insert into test values(1,"rajendra");
insert into test values(2,"navi");
insert into test values(3,"subham");
insert into test values(4,"akshay");
insert into test values(5,"govind");

select * from test;

create or replace view test_view as
select id,name from test;

select * from test_view;

delete from test_view
where id = 5 ; 

set sql_safe_updates=0;

create or replace view test_views as
select * from  test;

select * from test_views;





-- ifnull construnts;

insert into test values(null,"ram");
select * from test;
select count(name) from test;
select count(id) from test;

-- using ifnull

select id,ifnull(id,"Q") from test;    --  ifnull constraints use for remove missing values 

-- coalesce constraints

select * from test;
insert into test values(null,null)
