-- datatype 
-- string Data Type

use text;
show tables;
create table raj1(fname varchar(20),lname char(20));
insert into raj1 values("r a ","r a ");

select fname,lname,char_length(fname) as lenght,char_length(lname) as lenth from raj1;


create table raj2(fname varchar(3),lname char(3));
insert into raj2 values("r  ","r ");

select *,length(fname),length(lname) from raj2;
