use sakila;
create table test123( id int, name varchar(20), status bool,
secondaryName varchar(20), 
constraint sakila_test123_secName_check
check ( reverse(secondaryname)= name  ));
create table new_tables (id int);

select * from new_tables;
alter table new_tables add column name varchar(10) ;

alter table new_tables add constraint new_cons primary key(id);

rename table new_tables to new1;

select * from new1;
alter table new1 drop column name;

alter table new1 rename to new_tab ;

alter table new_tab rename column id to emp_id;

select * from new_tab;
desc new_tab;

alter table new_tab add column name varchar(10);
 desc new_tab;
 
 
 alter table new_tab add constraint new_cons unique(name);
 desc new_tab;
 
 
 alter table new_tab add column emp_count varchar(10);
 
 insert into new_tab values(7,"aasjvhjhv",1);
 select sum(name) from new_tab;
 
 desc new_tab;
 set sql_safe_updates=0;
 update new_tab set emp_count=null;
 
 desc new_tab;
 
 select * from new_tab;
 
 alter table new_tab modify name int ;