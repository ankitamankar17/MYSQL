create  database Assessment;

create  table Countries(
country_id varchar(2),
 country_name varchar(40),
 region_id decimal(10,0) 
 );
 


 insert into Countries(country_id,country_name,region_id)
  values('1' , 'Italy', '0000000012');
  
  insert into Countries(country_id,country_name,region_id)
  values('2' , 'India', '0000000023');
  
  insert into Countries(country_id,country_name,region_id)
  values('3' , 'China', '0000000014');
  
  create table country_new
  select * from countries;
  
 desc country_new;
  