use sakila;

-- q.1 get those user where actor_id have between 2 to 7 and  and first name is "NICK" and "ED" 
-- ans ==> 
select * from actor 
where actor_id between 2 and 7 
and (first_name="NICK" or first_name = "ed");

-- Q.2 get those users where not be last name is "a" and "e" 

select * from actor where last_name not like "%a%" and last_name not like "%e%";


-- Q3 find those user where first_name is "GRACE","MATTHEW","JOE" and actor_id less_then 15

select * from actor where first_name  in ("GRACE","MATTHEW","JOE") and actor_id <15;

-- Q4 find those user where last name should not be end "A" and first name should not be end "i" and actor id in between 10 to 20 

select * from actor where last_name not like "%a" and first_name not like "%i" and actor_id between 10 and 20 ;