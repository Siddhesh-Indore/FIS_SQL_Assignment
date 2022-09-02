create database ITFirm

use ITFirm

create table Clients 
(Client_ID int Primary Key,
Cname varchar (40) not null,
Address varchar(30),
Email varchar(30) unique,
Phone varchar(10),
Business varchar(20) not null)

create table Employees
(Empno int primary key,
Ename varchar(20) not null,
Job varchar(15),
Salary varchar(7),
DeptNo int references Departments(Deptno))

Alter table Employees
add constraint chksalary check(Salary>0)

create table Departments
(Deptno int primary key,
Dname varchar(15) not null,
Loc varchar(20))

create table Projects 
(Project_ID int primary key,
Decr varchar (30) not null,
Start_Date Date,
Planned_End_Date Date,
Actual_End_Date Date,
Budget int,
Client_ID int references Clients(Client_ID))

Alter table Projects
add constraint chkdate check(Actual_End_Date>Planned_End_Date)

Alter table Projects
add constraint chkbudget check(Budget>0)

create table EmpProjectTasks
(Project_ID int,
Empno int ,
Start_Date date,
End_Date date,
Task varchar(25) not null,
Primary Key(Project_ID,Empno),
Foreign Key (Project_ID) references Projects(Project_ID),
Foreign Key (Empno) references Employees(Empno))

alter table EmpProjectTasks
add Status Varchar (15) not null

alter table EmpProjectTasks
drop column Statu_s

select * from EmpProjectTasks 
select * from Clients
select * from Departments
select * from Employees
select * from Projects

insert into Clients values (1001,'ACME Utlities','Noida','contact@acmeutil.com','9567880032','Manufacturing')
insert into Clients values(1002,'Trackon Consultants','Mumbai','consult@trackon.com','8734210090','Consultant'),(1003,'MoneySaver Distrubitors','Kolkata','save@moneysaver.com','7799886655','Reseller'),(1004,'Lawful Corp','Chennai','justice@lawful.com','9210342219','Professional')

insert into Employees values(7001,'Sandeep','Analyst','25000',10),(7002,'Rajesh','Designer','30000',10),(7003,'Madhav','Developer','40000',20),(7004,'Manoj','Developer','40000',20),(7005,'Abhay','Designer','35000',10)
insert into Employees values(7006,'Uma','Tester','30000',30),(7007,'Gita','Tech.Writer','30000',40),(7008,'Priya','Tester','35000',30),(7009,'Nutan','Developer','45000',20),(7010,'Smita','Analyst','20000',10),(7011,'Anand','Project Mgr','65000',10)

insert into Departments values(10,'Design','Pune'),(20,'Development','Pune'),(30,'Testing','Mumbai'),(40,'Document','Mumbai')

insert into Projects values(401,'Inventory','2011-04-01','2011-10-01','2011-10-31',150000,1001)
insert into Projects (Project_ID,Decr,Start_Date,Planned_End_Date,Budget,Client_ID) values(402,'Accounting','2011-08-01','2012-01-01',500000,1002)
insert into Projects (Project_ID,Decr,Start_Date,Planned_End_Date,Budget,Client_ID) values(403,'Payroll','2011-10-01','2011-12-31',75000,1003),(404,'Contact Mgmt','2011-11-01','2011-12-31',50000,1004)

insert into EmpProjectTasks values(401,7001,'2011-04-01','2011-04-20','System Analysis','Completed')
insert into EmpProjectTasks values(401,7002,'2011-04-21','2011-05-30','System Design','Completed'),(401,7003,'2011-06-01','2011-07-15','Coding','Completed'),(401,7004,'2011-07-18','2011-09-01','Coding','Completed'),(401,7006,'2011-09-03','2011-09-15','Testing','Completed'),(401,7009,'2011-09-18','2011-10-05','Code Change','Completed'),(401,7008,'2011-10-06','2011-10-16','Testing','Completed'),(401,7007,'2011-10-06','2011-10-22','Documentation','Completed'),(401,7011,'2011-10-22','2011-10-31','Sign Off','Completed'),(402,7010,'2011-08-01','2011-08-20','System Analysis','Completed'),(402,7002,'2011-08-22','2011-09-30','System Design','Completed'),(402,7004,'2011-10-01',null,'Coding','In Progress')
