show tables;

--  locical operator and or not
select * from actor where first_name = "nick"  and actor_id = 2 ;  --  and me dono condition true honi chaiye varna false table print hogi

select * from actor where first_name = "nick"  or  actor_id = 3 ;   --  and or conditon me multiple answere aayege or dono match hona mendatory hona jaruru nahi he 

select * from actor_info;

select * from actor_info where film_info = "Animation%" and first_name ="GOLDIE";

select * from actor_info where first_name  like "GOLDIE";

select * from actor_info;

select * from actor_info where film_info like "Animation%" and first_name = "GOLDIE" or first_name="NICk";


select * from film_list;  

select category,rating,title from film_list where category like "Sci-Fi" and rating like "PG";

select category,rating,title from film_list where category like "Sci-Fi" or category like "FAmily" and rating like "PG";  --  isme pahle and operation excute hota he proferance he accourding 

select category,rating,title from film_list where (category like "Sci-Fi" or category like "Family") and rating like "PG";  --  is () ke according ham priority set kar sakte he isme () hoga vo pahle excute hoga


select 2+2*3;

select (2+2)*3;

select * from actor where actor_id between 2 and 5;
select * from actor where actor_id between 5 and 2 ;--  is order me hame pahle  small value deni hoti he or bad me badi isme

select * from actor where first_name between "B" and "dan"; --  isme value ka comparison aski value se hoga agar hame d ko diya he to d se choti value aayegi aski ke hisab se 

--  "in" or "not in" operator 
select * from actor where actor_id in (1,5); 

--  <> not in operator 
select * from actor where actor_id !=1;
select * from actor where (actor_id =1);




