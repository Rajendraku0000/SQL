-- alias name : nick name 

use sakila;

select first_name from actor;

select concat(first_name," ",last_name) from actor; -- without as 

select concat(first_name," ",last_name) as full_name from actor;  -- with as full_name
select concat(first_name," ",last_name) full_name from actor;  -- withou as keyword full_name

/* limitation 1. we cont apply where condition on alias name 
			2.  we connot apply on clouse and where clouse when we apply join operation 
*/

-- Group by :-
--  singal row function : this function generate the output based of each row
-- for example lenght()

select first_name , length(first_name) from actor;

-- Multi row function ; this function is collect some row and performe operation that function callled multi row function
-- for example group by function


-- group by 

 use world;
 show tables;
 select * from country;
 
 create table t1 (id int , city varchar(20));
 insert into t1 values(1,"hey1");
 insert into t1 values(2,"hey2");
 insert into t1 values(null,"hey1");
 
 select count(*) from t1;  -- jab ham count(*) use karte he to yeh vo column select karta he jisme null value nai ho 
  
  select count(id) from t1;
  
  select sum(id) from t1;
 
 select distinct(city) from t1;
 
 select count(distinct(city)) from t1;
 
 
 select * from city;
 
 select count(name) from city where countrycode="AFG";
 select Count(name),Countrycode from city group by (CountryCode);
 select distinct(name) from city;
 
 select sum(population) from city group by countrycode;
 
 
 select concat("Country"," ",countrycode," ","has total count of"," ",count(id)," ","and sum is population"," ",sum(population) )  as output from city group by countrycode;
 
 select countrycode , count(id), sum(population) as total_population from city
 group by countrycode
 having sum(population)>500 and count(id)>1;
 
 select * from city;
 
 