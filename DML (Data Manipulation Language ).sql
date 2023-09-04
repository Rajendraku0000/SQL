--  DML (Data Manipulation Language) : in this subset we  run some command like insert update and delete and we insert tha data into the table with the help of insert function 


use rajendra;
show tables;
select * from raj;

-- 1. insert := this command is used for insert data into the table 

-- 1st method 
insert into raj (id,first_name) values(2,"ramgopal");
insert into raj (first_name,id) values("rajendra",3);
select * from raj;

-- 2nd method

insert into raj values(4,"manish");
insert into raj values(5,"shubham"),(6,"navi"),(7,"akshay");
select * from raj;

-- 2.update := this function is use to update any value with other value
select * from raj ;

update raj
set first_name = "rajendra"
where id = 2 ;

select * from raj ;

-- 3. delete := this function is use to remove or delete row based on condition 
delete from raj
where id =7;

select * from raj;