-- DDL (DATA DEFINATION LANGUAGE) :==

--  in this subset we perfome some command like create alter drop truncate and rename and this subset is mainly use to create a tables and alter tables

-- 1. CREATE :- this command is use for create a new table 

--  we need to first create database and use for create a tables
create database rajendra;
use rajendra;


create table raj  (
id int(5) not null ,
first_name char(10),
primary key (id) );

select * from raj ;


--  2.  ALTER := this command is use to add,drop,rename  and other updation in tables 


alter table raj add column contect_number int(10) ;
select * from raj;

alter table raj rename column contect_number to mobile_number ;
select * from raj;


alter table raj drop column mobile_number ;
select * from raj;



-- 3. truncate :== this command is use for remove all the recode 

truncate table raj;

--  4. drop :== this command is use for remove table from tha database 

drop table raj;




