
/*UC8_Extendtable*/
alter table employee_payroll add phone_number varchar(250);
alter table employee_payroll add address varchar(250) default 'NYC';
alter table employee_payroll add department varchar(250) not null default 'HR' ;