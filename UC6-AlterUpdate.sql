use payroll_services;
select * from employee_payroll;
/* Adding the gender attribute to the employee payroll table*/
alter table employee_payroll add gender char(1);
/* Updating to add the value of gender in the employee payroll table*/
update employee_payroll set gender = 'F' where EMPNAME = 'Terissa';
update employee_payroll set gender = 'M' where EMPNAME = 'nikhil';
update employee_payroll set gender = 'F' where EMPNAME = 'Aliatta';
update employee_payroll set gender = 'M' where EMPNAME = 'prince';
update employee_payroll set gender = 'M' where EMPNAME = 'Aseeb';
update employee_payroll set gender = 'M' where EMPNAME = 'akhil';
update employee_payroll set gender = 'M' where EMPNAME = 'Manohar';