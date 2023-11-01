/*
The MySQL system automatically generates index on columns declared 
as Primary Key or with Unique constraint. This is mandatory to enforce 
niqueness of values. Those indexes are of Primary type. 
They are also called as Clustered Index. All other index types than 
Primary are called as Secondary or non-Clustered Index.


Primary index is special, as the index 
itself is stored together with the data in the same table.
 The clustered index enforces order of rows in the table.
 A table can have only one Clustered Index because of this property
 of enforcing order of rows in the table.
 
 
 A composite index is the one which is created on combination of
 two or more columns. Sometimes it is also called a compound index. 
 Composite indexes can help speed up execution of query only if you
 choose not only correct combination of columns but also their proper
 order to form index key. For example combination of columns (c1, c2, c3)
 as index key in composite index will have different search behavior than 
 combination (c3, c1, c2) of same columns.
 
 The column or combination of columns used for creating index is called as index key.
 Generally the rule of thumb is to choose such column or combination of
 columns which are involved in search criteria (WHERE clause), 
 ORDER BY clause, GROUP BY clause and DISTINCT clause. */
 
 
 use sakila;
 create table new_index(a int primary key auto_increment, b varchar(20),c int );
 
 insert into new_index values(1,'raj',5000);
 insert into new_index values(2,"raj",6000);
  insert into new_index values(3,"ram",7000);
insert into new_index values(4,"gov",6000);

show indexes from new_index ;

create index new_index1 on new_index(b);
explain select * from new_index where b = "raj";

create index new_index2 on new_index(a,b);
drop index new_index2 on new_index;

explain select * from new_index where  b = "raj";
 