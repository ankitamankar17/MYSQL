create database Assign;

CREATE TABLE salespeople (
    Snum int auto_increment,
    Sname varchar(255),
	City varchar(255),
    Comm varchar(255),
    primary key(Snum)
  );
  insert into salespeople(Snum,Sname,City,Comm)
  values('1001' , 'Peel', 'London', '12');
  insert into salespeople(Snum,Sname,City,Comm)
  values('1002' , 'Serres ', 'Sanjose', '13');
  insert into salespeople(Snum,Sname,City,Comm)
  values('1004' , 'Motika ', 'London', '11');
  insert into salespeople(Snum,Sname,City,Comm)
  values('1007' , 'Rifkin ', 'Barcelona ', '15');
  insert into salespeople(Snum,Sname,City,Comm)
  values('1003' , 'Axelrod ', 'Newyork', '10');
  
  CREATE TABLE Customers (
    Cnum int ,
    Cname varchar(255),
    City varchar(255),
    primary key(Cnum),
    Snum int ,FOREIGN KEY (Snum) REFERENCES Salespeople(Snum)
);

insert into Customers(Cnum,Cname,City,Snum)
  values('2001' , 'Hoffman', 'London ', '1001');
  insert into Customers(Cnum,Cname,City,Snum)
  values('2002' , 'Giovanni', 'Rome ', '1003');
  insert into Customers(Cnum,Cname,City,Snum)
  values('2003' , 'Liu ', 'Sanjose  ', '1002');
  insert into Customers(Cnum,Cname,City,Snum)
  values('2004' , 'Grass   ', 'Berlin ', '1002');
  insert into Customers(Cnum,Cname,City,Snum)
  values('2006' , 'Clemens   ', 'London ', '1001');
  insert into Customers(Cnum,Cname,City,Snum)
  values('2008' , 'Cisneros   ', 'Sanjose ', '1007');
  insert into Customers(Cnum,Cname,City,Snum)
  values('2007' , 'Pereira   ', 'Rome ', '1004');
  
create table Orders(
Onum int ,
Amt int,
Odate date,
primary key(Onum),
Snum int ,FOREIGN KEY (Snum) REFERENCES Salespeople(Snum),
Cnum int ,FOREIGN KEY (Cnum) REFERENCES Customers(Cnum)
  );
  
  
 insert into Orders(Onum,Amt,Odate,Cnum,Snum)
  values('3001' , '18.69', '1990-10-03', '2008','1007'); 
   insert into Orders(Onum,Amt,Odate,Cnum,Snum)
  values('3003', '767.19', '1990-10-03', '2001', '1001'); 
   insert into Orders(Onum,Amt,Odate,Cnum,Snum)
  values('3002', '1900.10', '1990-10-03', '2007', '1004'); 
   insert into Orders(Onum,Amt,Odate,Cnum,Snum)
  values('3005', '5160.45', '1990-10-03', '2003', '1002'); 
  insert into Orders(Onum,Amt,Odate,Cnum,Snum)
  values('3006',  '1098.16', '1990-10-03', '2008', '1007'); 
  insert into Orders(Onum,Amt,Odate,Cnum,Snum)
  values('3009', '1713.23', '1990-10-04', '2002', '1003'); 
  insert into Orders(Onum,Amt,Odate,Cnum,Snum)
  values('3007',  '75.75', '1990-10-04', '2004', '1002'); 
  insert into Orders(Onum,Amt,Odate,Cnum,Snum)
  values('3008',  '4273.00' , '1990-10-05' , '2006', '1001'); 
  insert into Orders(Onum,Amt,Odate,Cnum,Snum)
  values('3010',  '1309.95', '1990-10-06', '2004', '1002'); 
  insert into Orders(Onum,Amt,Odate,Cnum,Snum)
  values('3011',  '9891.88', '1990-10-06', '2006', '1001'); 

 -- Count the number of Salesperson whose name begin with ‘a’/’A’;
select * from Salespeople where Sname like 'a%'or Sname like 'A%';

-- Display all the Salesperson whose all orders worth is more than Rs. 2000.
select * from Orders where Amt>2000; 

-- Count the number of Salesperson belonging to Newyork.
select Sname from salespeople where City='Newyork';

-- Display the number of Salespeople belonging to London and belonging to Paris.
select count(sname)
 from salespeople
 where city='London' 
 and city='Paris' ;

-- Display the number of orders taken by each Salesperson and their date of orders.
select Odate,Snum,count(*) from orders  group by Odate,Snum;
