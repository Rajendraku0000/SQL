use world;

show tables;
select * from city;
select count(Continent) from country;

select distinct(continent) from country;

select continent,count(*) from country
group by continent;

select continent,count(*) from country
group by continent
having count(*) >50;

-- set uperation 



use sakila;
show tables;
select * from actor;
desc actor_info;

select first_name from actor limit 3;
select first_name from actor_info limit 3;
-- union 

select first_name from actor
union 
select first_name from actor_info;  -- return total uniue values


-- union all

select first_name from actor
union all
select first_name from actor_info;  -- return total value

-- intersection

select first_name from actor
intersect
select first_name from actor_info;  -- return comman values

-- except

select first_name from actor
except
select first_name from actor_info;  -- return different value based on tables 1st ke according 


-- union limitation => 
/*-- 1 number of columns same hone chaiye 2 columns compatable hona chaiye */

-- Question between set and joins , primary key ,joins,foreign key


