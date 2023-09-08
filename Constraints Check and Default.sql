-- Constraint;
use text;
show tables;



-- Check  Constraints: this constraint is use for check any condition before inserting the data 
  
  
  
  
  
-- 1nd method for apply check constraints 
create table check_cons (eid int check(eid >5));   --   in this table we applyed the constraint when inserting the eid and eid should be grether then 5 

insert into check_cons values(12);   -- complete insert 
insert into check_cons values(10);
insert into check_cons values(4);   -- this conditon generate a error becouse your condition is not varified







-- 2nd method for apply check constraints 
create table check_cons2 (eid int check(eid >5),gender char(1) check(Gender in ("m","f") ));

insert into check_cons2 values(12,"m");
   -- complete insert 
insert into check_cons2 values(10,"o");
insert into check_cons2 values(1,"f"); 

/* is methos me hamne dono attribute pr different different constraint apply kiye he 
to data tabhi insert hoga jab dono condition true hogi */




-- 3nd method for apply check constraints 
create table check_cons3 (eid int,gender char(1),check(eid >5 and gender in ("m","f")));

insert into check_cons3 values(12,"m");   -- complete insert 
insert into check_cons3 values(10,"o");
insert into check_cons3 values(1,"f");

/* is methos me hamne dono attribute pr different different constraint apply kiye he par dono and operator use kiya 
to data tabhi insert hoga jab dono condition true hogi */




-- 4nd method for apply check constraints 
create table check_cons4 (eid int,gender char(1),check(eid >5 or gender in ("m","f")));

insert into check_cons4 values(12,"m");   -- complete insert 
insert into check_cons4 values(10,"o");
insert into check_cons4 values(1,"f");
insert into check_cons4 values(1,"a");

select * from check_cons4;
/* is methos me hamne dono attribute pr different different constraint apply kiye he par dono or operator use kiya 
to data tabhi insert hoga jab dono condition mese one condition true  hogi */





-- DEFAULT CONSTRAINTS;  this constraint is use for inserting any byfault value when not insert any value by the user 

create table default_cons(eid int default 0,fname char(10) default "raj");

insert into default_cons values(1,"gopal");
insert into default_cons(eid) values(10); -- defoult fill the value is name="raj" 
insert into default_cons(fname) values("navi");  -- defoult fill the value is eid=0

select * from default_cons;