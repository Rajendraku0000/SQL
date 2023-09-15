use sakila;
show tables;
desc actor;
desc actor_info;
desc film;
desc film_actor;


-- method one using() method
select * from actor;
select actor.actor_id,actor.first_name,film_actor.film_id from actor
inner join film_actor
using(actor_id);



create table student1(id int , sname char(5));
create table student2(id int , hobby char(5));


insert into student2 value(2,"bask");

select * from student2;


select student1.id, student1.sname,student2.hobby  from student1
inner join student2 using(id);


-- method number 2 using where condtion 
select student1.id, sname,hobby  from student1,student2 where student1.id=student2.id;

-- method 3 using with on close
select student1.id, student1.sname,student2.hobby  from student1
inner join student2 
on student1.id = student2.id;


