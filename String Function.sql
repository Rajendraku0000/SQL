-- String Function 

use world;
show tables;
select * from country;
select * from city;

-- 1. Concat() := this function use for concatadination two string  and representation new string 
select concat(CountryCode," ",District) as new_colums from city;
select concat("rajendra"," ","kumar") as new_string;

--  concat_ws := is function me hame kissi bi seperator ki help se concate kar sakte he 
select concat_ws("-","hello","my","name","rajendra") as new_string ;






-- 2. replace() := this function is use for replace with any charactor and strin and represent new string
select * from city;
select replace(name ,"Kabul" ,"Raj") as new_colums from city;
select replace("Rajendra","r","k") as new_string;  -- is function me sirf last wala small "r" hi replace hoga capital "R" nahi 
select replace("rajendra","r","k") as new_string;  -- is function me dono small "r" replace ho jaige 

-- 3 length() and char_lenght() := both function is use for count the charactor in givan string  but have a difference between lenght() is always counts bytes and char_lenght() always counts string charactor
select * from city;
select *,length(District) from city;
select *,char_length(District) from city;
select length(Name),name,char_length(Name) from city;




-- 4 left() and right() := this function is use to create a subset from left and right string based on number of charactor 
select right(Name,2) from city;  -- is right function me string me se ringht se 2 charactor return honge
select left(Name,5) from city;  -- is left function me string me se right me se 5 charactor return karega 

 

-- 5. substring() and substr() := is function ka use kiya jata he givan string me se kisi starting point se ek subset create kar sakte he or substring() and substr() me koi difference nahi he  
--                                is function ke syntex me ham pahle string mention karte he fir starting point mention kathe he fir subset ku lenght kar sakte he if agar ham lenght ko mention nahi karte he to bydefoult puri string aati he 
select Name,substring(Name,3,5) as new_string from city;
select Name,substring(Name,3) as new_string from city;
select Name,substring(Name,-2) as new_string from city;   -- isme hame negetive indexing bi use kar sakte he      

-- 6. trim() := this function is use for remove extra white spaces in givan string before and after but this function is not remove white space in middle in 2 charactor or sting 
select trim("     Rajendra kumar      ") as new_string ;
select trim("     Rajendra        kumar      ") as new_string ;

select trim(leading " " from "     rajendra     kumar     ") as new_sr;  --  in function se ham kisi bi charactor ko bi remove kar sakte he 
select trim(trailing " " from "     rajendra     kumar     ") as new_sr;
select trim(leading "r" from "rajendra     kumar") as new_sr;  --  jo word hatana ho vah strting me hona chaiye agar koi other word ya space hoga to remove nahi hoga 
select trim(trailing "r" from "rajendra     kumar") as new_sr;
select trim(both "r" from "rajendra     kumar") as new_sr; 


-- 7. locate() and instr() := instr() functionka use kiya jata he ki givan string me kisi charactor ki position ka janne ke liye  yeh hamesha starting se search karte he  
--                            locate() function ka use kiya jata he givan string me kisi charactor ki position ka janane ke liye but isme ham starting position apne hisab se start kar sakte he 
select instr("rajendra","r") as new_str;
select locate("r","rajendra",2) as new_ster ;

-- 8.upper() and lower() := this function is use for convert the givan string into the lower case  and upper case 
select upper(Name) as new_str from city;
select lower(Name) as new_str from city;


--  9 lpead() or rpad() := in function ka use kiya jata he padding ke liye ya extra word ko concate karne ke liye 

select lpad("rajendra",10,"@");
select lpad("rajendra",5,"@");

select rpad("rajendra",10,"@");
select rpad("rajendra",5,"@");


-- 10 reverse(): = in function ka use kiya jata he string ko reverse karne ke liye ;
select reverse("hello");