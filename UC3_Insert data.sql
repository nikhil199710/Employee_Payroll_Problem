  /*UC3-insert data*/
use payroll_services;
create table employee_payroll
( EMPID int not null identity(1000,1) primary key,
EMPNAME varchar(150) not null,
SALARY float not null,
STARTDATE date not null);
/* Reading the entire data from the employee payroll table*/
select * from employee_payroll;
/* Inserting the data from the employee payroll table excluding the ID as it is default ad auto-increment*/
insert into employee_payroll(EMPNAME, SALARY, STARTDATE)
values ('nikhil', 30000, '2018-01-03'),
('Terissa', 25000, '2019-06-08'), ('Aliatta', 35000, '2019-07-08'),
('prince', 40000, '2018-04-06'), ('Aseeb', 33000, '2016-06-08'),
('akhil', 45000, '2014-06-08'), ('Manohar', 55000, '2017-06-08');
