Create database Firm
create table tblEMP(
empno int primary key,
ename varchar(40) not null,
job varchar(40),
mgr_id int,
hiredate date not null,
salary numeric(7),
comm numeric(6),
deptno numeric(4) foreign key references tblDPT(deptno)
)
create table tblDPT(
deptno numeric(4) primary key,
dname varchar(40),
loc varchar(40)
)

INSERT INTO tblDPT(Deptno,Dname,Loc) VALUES (10,'Accounting','New York');
INSERT INTO tblDPT(Deptno,Dname,Loc) VALUES (20,'Research','Dallas');
INSERT INTO tblDPT(Deptno,Dname,Loc) VALUES (30,'Sales','Chicago');
INSERT INTO tblDPT(Deptno,Dname,Loc) VALUES (40,'Operations','Boston');

INSERT INTO tblEMP VALUES (7369,'SMITH','CLERK','7902','17-DEC-80',800,null,20),(7499,'ALLEN','SALESMAN','7698','20-FEB-81',1600,300,30),(7521,'WARD','SALESMAN','7698','22-FEB-81',1250,500,30),(7566,'JONES','MANAGER','7839','02-APR-81',2975,20,NULL),(7654,'MARTIN','SALESMAN','7698','28-SEP-81',1250,1400,30),(7698,'BLAKE','MANAGER','7839','01-MAY-81',2850,null,30),(7782,'CLARK','MANAGER','7839','09-JUN-81',2450,null,10)
INSERT INTO tblEMP VALUES (7788,'SCOTT','ANALYST','7566','19-APR-87',3000,null,20),(7839,'KING','PRESIDENT',null,'17-NOV-81','5000',null,10),(7844,'TURNER','SALESMAN','7698','08-SEP-81',1500,0,30),(7876,'ADAMS','CLERK','7788','23-MAY-87',1100,null,20),(7900,'JAMES','CLERK','7698','03-DEC-81',950,null,30),(7902,'FORD','ANALYST','7566','03-DEC-81',3000,20,NULL),(7934,'MILLER','CLERK','7782','23-JAN-82',1300,10,NULL)



select * from tblDPT
select * from tblEMP

Select * from tblEMP where ename like 'A%'
select * from  tblEMP where mgr_id is NULL
select ename,empno,salary from tblEMP where salary between 1200 and 1400 


