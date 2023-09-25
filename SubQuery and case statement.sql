use employees;
show tables;



--  find those user 
select emp_no ,year(from_date) as fd from titles
where title = "Manager" and 
(emp_no,year(from_Date)) in 

(select emp_no , year(from_date) 
from titles
where title <> "Manager");


-- Correlated Query 

-- exists keyword 
select * from departments;

select count(*) from departments
where exists (select * from dept_emp where  emp_no < 100) ;

-- find those user

use sakila;
show tables;
select * from customer;


/* first_name or last_name wali question karna he */




select * from film;
select inventory.film_id , film.film_id,count(*) from inventory ,film
where inventory.film_id = film.film_id
group by film.film_id ;


select count(*) from film  where exists 
(select count(*) from inventory , film
where inventory.film_id = film.film_id
group by inventory.film_id 
having  > 2);


-- nested query in from clouse
use employees;
select birth from 
(select emp_no,year(birth_date) as birth from employees ) as xyz ;

select emp_no , monthly_salary from
(select emp_no ,salary/12 as monthly_salary from  salaries) as ms
limit 5;


use sakila;

select sum(new_amount) from 
(select sum(amount) as new_amount,film_id
from payment join rental using (rental_id)
join inventory using (inventory_id)
join film using (film_id)
group by film_id)  as new_table;




select * from payment;



use sakila;
select payment_id,rental_id , amount from payment;

select 
case 
	when payment_id >1 then "yes"
    else "no"
end "new_columns",
amount from payment;
    

select round(144.34,-2) from dual;
