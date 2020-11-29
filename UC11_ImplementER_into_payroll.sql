/*UC 11:
ER diagram*/
use payroll_service;

/*Company table and adding data to it*/
create table company(CompanyId int not null primary key, CompanyName varchar(150) not null);
insert into company values(500,'Flipkart');
insert into company values(600,'Myntra');
select * from company;

/*Employee table and adding data to it*/
create table employee 
(EmpId int not null identity(1,1) primary key,
EmpName varchar(150) not null,
Gender char(1) not null,
PhoneNo bigint not null,
Address varchar(500) not null,
StartDate date not null,
CompanyId int not null foreign key references company(CompanyId));
insert into employee values ('Nikhil','M',7206183244,'Agra','2020-09-18',500);
insert into employee values ('neha','F',9457127771,'New York','1996-10-24',500);
insert into employee values ('akhil','M',9410884202,'Canada','2003-12-26',500);
insert into employee values ('akki','M',935054985,'Tennessee','1964-08-25',600);
insert into employee values ('sneha','F',8521479630,'Georgia','1985-10-19',600);

/*Payroll table and adding data to it*/ 
create table payroll
(EmpId int not null primary key references employee(EmpId), BasicPay decimal,Deductions decimal,TaxablePay decimal,IncomeTax decimal,NetPay decimal);
insert into payroll values (1,72000,3000,69000,1200,85200);
insert into payroll values (2,160000,15000,145000,2400,74100);
insert into payroll values (3,3200000,20000,3180000,3600,96300);
insert into payroll values (4,450000,50000,400000,4800,85400);
insert into payroll values (5,5600000,60000,5540000,6000,85600);

/*Department table and adding data to it*/
create table department (DeptId int not null primary key, DeptName varchar(100) not null);
insert into department values (5,'Sales');
insert into department values (10,'Marketing');

/*EmpDepartment table and adding data to it*/
create table empDepartment (EmpId int not null foreign key references employee(EmpId), DeptId int not null foreign key references department(DeptId));
insert into empDepartment values (1,5);
insert into empDepartment values (2,5);
insert into empDepartment values (2,10);
insert into empDepartment values (3,5);
insert into empDepartment values (4,10);
insert into empDepartment values (5,10);
