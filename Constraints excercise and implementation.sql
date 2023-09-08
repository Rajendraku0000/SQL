use text;
drop table null_cons;
create table null_cons(eid int not null , fname varchar(10),lname varchar(10));
insert into null_cons values(1,"rajendra","kumar");
insert into null_cons values(2,"rajendra","nagar");
insert into null_cons values(null,"rajendra","nagar");

alter table null_cons add constraint unique(fname);
alter table null_cons rename column lname to last_name;
alter table null_cons modify eid int not null ; 
desc null_cons;
select * from null_cons;

drop table primary_cons;
create table primary_cons(eid int, fname varchar(10),lname varchar(10),primary key(lname));

desc primary_cons;

alter table primary_cons modify fname varchar(10) primary key;
alter table primary_cons add constraint primary key(fname);

drop table foreign_cons;
create table foreign_cons
(eid int, 
fname varchar(10),
lname varchar(10) ,
FOREIGN KEY(eid)  REFERENCES primary_cons(lname));


drop table auto_incre;
create  table auto_incre(
eid int  primary key auto_increment,  
fname varchar(10));

insert into auto_incre(fname) values("rajendra");
select * from auto_incre;

