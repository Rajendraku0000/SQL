--  insert command 
use sakila;
show tables;

select * from language;
insert into language values(13,"new1",now());
insert into language values(14,"new2","2023-03-30 10:25:00");
insert ignore into language values(14,"new4","2023-03-30 10:25:00");

insert into language values(14,"new2","2023-03-30 10:25:00",2);
desc language;

insert into language(name,last_update) values("new34",now()),("new34",now()),("new34",now());

insert into language set name="ghan" ,last_update=now();

select * from language;

create database text;
create database if not exists text;

use text;

create table employee (
eid int,ename char(20),
email char(20));

select * from employee;
desc employee;

insert into employee values(1,"tushar","tushar@gmail.com");

insert into employee values(2,"tushar","tushar@gmail.com");

insert into employee values(1,"tushar",null);

select * from employee;

create table employee2(
eid int default 0,ename char(20) default "raj",
email char(20) default "raj@gmail.com");

select * from employee2;

insert into employee2(eid,ename) values(1,"rajendra");



create table employee4(
eid int default 0 ,ename char(20) default "raj",
email char(20) default "raj@gmail.com",
company_name char(20) default "regex software",
dates timestamp default now());

select * from employee4;

insert into employee4 (eid,ename,email) values(1,"rajendra","rajedn@gamil.com");
delete from employee4
where eid=2;


create table employee5(
eid int primary key auto_increment ,ename char(20) default "raj",
email char(20) default "raj@gmail.com",
company_name char(20) default "regex software",
dates timestamp default now());

insert into employee5 (eid,ename,email) values(1,"rajendra","rajedn@gamil.com");
insert into employee5 (ename,email) values("rajendra","rajedn@gamil.com");
select * from employee5;


set sql_safe_updates=0;
delete from employee5
where eid=2;