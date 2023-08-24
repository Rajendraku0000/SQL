use  sakila;

 -- for check your database
 select database();
 
 -- for all tables in database 
 show tables;
 
 -- show khnow about the tables both command are same no difference 
show columns from actor;
desc actor;

-- for knon about the tables
select * from actor;
select * from sakila.actor;

--  where clouse ka use kiya jata he data filtering me for example
select * from language;
select * from language where name="English";
select * from language where name>"i"; --  is condtion me jo name I se start hoga or bada hoga vo hi aayega 

select * from language where language_id = 5 ;
select * from language where language_id <> 5 ;  -- <> not equal to operator 

--  mysql is not case sensitive 
select * from actor where first_name>"b";


select * from actor;

--  wildcard charactor 
select * from film where title like "%dinosaur%";  --  is condition me dinosour ke starting or ending me kuch bi ho sakta he
select * from film where title like "%dinosaur";


select * from film where title like "a%";  -- is condition me starting me "a" hone chaiye 
select * from film where title like "a%r"; -- is condition me starting "a" or ending "r"
select * from film where title like "_r%";  --  is conditon me 2 number "r" hona chaiye 

 -- 2,file me title desc or year nikal he jo title "a" se start ho or end "les" ho 
select title,description,release_year from film where title like "a%les";


--  hame vo title filmid resase_id descrip
--  1st conditon he hame title me se secound c hone chaiye 
-- 2nd title me last 2 charactor an ho or starting a
--  3rd condition hame title  minimum 4 charactor ho or last charactor t hona chaiye 
--  jisme secound f ho 4th i hone chaiye or end egg se hone chaiye 
--  hame file chaiye jisme 5 charactor a hoga 

select * from film;
select title,film_id,release_year,description from film where title like "_c%";  --  1 st question ka answear

select title,film_id,release_year,description from film where title like "a%an"; -- 2nd 

-- select title,film_id,release_year,description from film where title like "_c%"; -- 

select title,film_id,release_year,description from film where title like "%t___"; -- 3d charactor



