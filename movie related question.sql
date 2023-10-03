create database Question;
create table movies(movie_id int unique ,movie_name varchar(50),duration int , price int );
create table customer(customer_id int , customer_name varchar(50),movie_id int , watch_date date,constraint relation foreign key (movie_id) references movies(movie_id));


insert into movies values(101,"shershah",130,200);
insert into movies values(102,"kabir singh",120,100);
insert into movies values(103,"pathaan",135,250);
insert into movies values(104,"jawaan",120,185);
insert into movies values(105,"fukre",100,80);
insert into movies values(106,"rocky rani",115,130);
insert into movies values(107,"dream girl",119,155);
insert into movies values(108,"bawaal",125,190);
insert into movies values(109,"satyaprem ki katha",133,185);
insert into movies values(110,"gadar",130,250);
insert into movies values(10,"abc",85,70);
insert into movies values(11,"cde",90,15);
insert into movies values(12,"xyz",105,33);



select * from movies;
insert into customer values(1,"rajendra",109,"2023-05-15");
insert into customer values(2,"ramgopal",109,"2023-05-15");
insert into customer values(3,"navi",109,"2023-05-16");
insert into customer values(1,"rajendra",101,"2023-05-25");
insert into customer values(3,"navi",105,"2023-05-25");
insert into customer values(2,"ramgopal",103,"2023-05-17");
insert into customer values(4,"govind",106,"2023-05-27");

insert into customer values(4,"govind",108,"2023-05-28");
insert into customer values(1,"rajendra",108,"2023-05-29");
insert into customer values(1,"rajendra",107,"2023-05-30");

insert into customer values(1,"rajendra",106,"2023-05-30");
insert into customer values(5,"subham",null,"2023-06-01");
insert into customer values(6,"akshay",null,"2023-06-02");
insert into customer values(1,"rajendra",10,"2002-05-30");
insert into customer values(1,"rajendra",11,"1999-05-30");
insert into customer values(1,"rajendra",12,"1999-05-30");

select * from customer;

--  Q1. find all custmuer_id , ncustomer_name , movie_name
select customer_id, customer_name,customer.movie_id, movie_name
from customer
inner join movies using(movie_id);

-- Q2.get all the customer info wather they have movie watch or not 

-- these customer has watch movie 
select * from customer;
select  distinct(customer_name)  , customer_id  from customer 
where customer_id in (select customer_id from customer)
and movie_id in (select movie_id from customer );

-- these customer has  no watch movie 
select * from customer;
select * from customer 
where customer_id in (select customer_id from customer
group by customer_id 
having count(movie_id)) = 0;








--  Q3 get the all custumer_id and total number of movie  the customer watch after 2000

select customer_id,count(movie_id)  from customer
where year(watch_date) > 2000
group by customer_id ;


select * from customer;
select count(movie_id) from customer where customer_id = 6;



-- Q4 find out total amount spend by a use while watching a movie and find the  the duration of  movie that  he has watch 
 select customer_id,sum(duration) as total_duration, sum(price) as total_price
from customer
inner join movies using(movie_id)
group by customer_id;


-- Q5 get only the customer_id,customer_name  of  tha  customer that has watch maxmimum number of movies

select customer_id,customer_name,count(*) from  customer
group by customer_id,customer_name
order by count(*) desc limit 1;


