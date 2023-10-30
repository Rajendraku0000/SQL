select * from mysql.user;


alter user 'rajnagar'@'localhost' identified by "rajnagar";
 show grants for rajnagar@localhost;
 
grant all privileges on *.* to rajnagar@localhost;

REVOKE ALL PRIVILEGES ON *.* FROM 'rajnagar'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'rajnagar';
REVOKE ALL PRIVILEGES FROM 'rajnagar'@'%';

use sakila;
drop table t1;
create table t1(id int primary key ,emp_name varchar(10));

select * from t1;
grant select(id,emp_name) ,insert(emp_name) on sakila.t1 to 'rajnagar'@'localhost';

alter user 'rajnagar'@'localhost' account unlock;
show databases;
use sakila;
show tables;


show grants for rajnagar@localhost;
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'rajnagar'@'localhost';





create role 'new_roles'@'localhost';
select * from mysql.user;

grant all privileges on sakila.* to 'new_roles'@'localhost' with grant option;

show grants for 'new_roles'@'localhost';

GRANT 'new_roles'@'localhost' TO 'ramgopal'@'localhost';

SHOW GRANTS FOR 'new_roles'@'localhost';

create user 'ramgopal'@'localhost';



create role 'nagar'@'localhost';
grant 'nagar'@'localhost' to 'rajnagar'@'localhost';