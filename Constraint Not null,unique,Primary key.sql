use world;
show tables;
select * from city;

use text;
show tables;
drop table employee4;

create table student (id int,first_name varchar(20));

insert into student values(1,"rajendra");
insert into student values(2,null);

insert into student(id) values(3);
select * from student;

-- construnts=  this is condition and rules whitch is use to ignore invalid data 
--  1.not null construnts;

create table stu1(id int not null default 0, first_name varchar(10) default "raj");
insert into stu1(first_name) values("rajendra");

insert into stu1(id,first_name) values(1,"subham");

select * from stu1; 

-- 2. unique 

create table stu2(id int unique default 0, first_name varchar(10) default "raj");
insert into stu2(first_name) values("rajendra");
insert into stu2(first_name) values("rajendra");  -- in this condition constraint accept only unique number and defoult run only on time 

insert into stu2(id,first_name) values(1,"subham");
insert into stu2(id,first_name) values(1,"subham");

select * from stu2;

-- primary key 

create table employee_new(id int primary key  default 0, first_name varchar(10) primary key default "raj");
insert into employee(first_name) values("rajendra");

insert into employee(id,first_name) values(1,"subham");


select * from employee;

