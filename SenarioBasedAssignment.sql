create database SenarioBasedAssignment
use SenarioBasedAssignment

create table tblBooks(id int primary key,title varchar(max),author varchar(30),isbn bigint,published_date datetime)

alter table tblBooks
add  constraint unqisbn unique(isbn)

insert into tblBooks values(1,'My First SQL book','Mary Parker',981483029127,'2012-02-22 12:08:17')
insert into tblBooks values(2,'My Second SQL book','John Mayer',857300923713,'1972-07-03 09:22:24'),(3,'My Third SQL book','Cary Flint',523120967812,'2015-10-18 14:05:44')

select * from tblBooks
select * from tblBooks where author like '%er'

create table tblreviews(id int foreign key references tblBooks(id),book_id int ,reviewer_name varchar(30),content varchar(max),rating int,published_date datetime)

insert into tblreviews values(1,1,'John Smith','My First Review',4,'2017-12-10 05:50:11')
insert into tblreviews values(2,2,'John Smith','My Second Review',5,'2017-10-13 15:05:12'),(3,2,'Alice Walker','Another Review',1,'2017-10-22 23:47:10')

select * from tblreviews

select title,author,reviewer_name from tblBooks join tblreviews on tblBooks.id=tblreviews.id

select reviewer_name as ReviewerName from tblreviews where count(reviewer_name)>1

create table tblemp(ID int primary key,Name varchar(30),Age int,Address varchar(30),salary float)

insert into tblemp values (1,'Ramesh',32,'Ahmedabad',2000.00),(2,'Khilan',25,'Delhi',1500.00),(3,'Kaushik',23,'Kota',2000.00),(4,'Chaitali',25,'Mumbai',6500.00),(5,'Hardik',27,'Bhopal',8500.00),(6,'Komal',22,'MP',4500),(7,'Muffy',24,'Indore',10000.00)

select * from tblemp

select Name from tblemp where Address like '%o%'

create table tblOrders(OID int primary key,D_ate datetime,customer_id int foreign key references tblemp(ID),amount int)

insert into tblOrders values(102,'2009-10-08 00:00:00',3,3000),(100,'2009-10-08 00:00:00',3,1500),(101,'2009-11-20 00:00:00',2,1560),(103,'2008-05-20 00:00:00',4,2060)

create table tblEmployee(ID int primary key,Name varchar(30),Age int,Address varchar(30),salary float)

insert into tblEmployee values (1,'Ramesh',32,'Ahmedabad',2000.00),(2,'Khilan',25,'Delhi',1500.00),(3,'Kaushik',23,'Kota',2000.00),(4,'Chaitali',25,'Mumbai',6500.00),(5,'Hardik',27,'Bhopal',8500.00),(6,'Komal',22,'MP',null),(7,'Muffy',24,'Indore',null)



select lower(Name) from tblEmployee where salary is null

create table tblstudentdetails (RegisterNo int primary key,Name varchar(20),Age int,Qualification varchar(7),MobileNo bigint,Mail_Id varchar(50),Location varchar(10),Gender char)

insert into tblstudentdetails values(2,'Sai',22,'B.E',9952836777,'Sai@gmail.com','Chennai','M')
insert into tblstudentdetails values(3,'Kumar',20,'BSC',7890125648,'Kumar@gmail.com','Madurai','M'),(4,'Selvi',22,'B.Tech',8904567342,'Selvi@gmail.com','Selam','F'),(5,'Nisha',25,'M.E',7834672310,'Nisha@gmail.com','Theni','F'),(6,'SaiSaran',21,'B.A',7890345678,'saran@gmail.com','Madurai','F'),(7,'Tom',23,'BCA',8901234675,'Tom@gmail.com','Pune','M')

select Name,Gender from tblstudentdetails
order by Gender


select * from tblstudentdetails

