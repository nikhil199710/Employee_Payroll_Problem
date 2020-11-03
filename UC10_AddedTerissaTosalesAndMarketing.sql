/* Invoking the payroll services database */
use payroll_services;
/* Retrieving all the records from the employee payroll table */
select * from employee_payroll;
/* Inserting the data from the employee payroll table excluding the ID as it is default ad auto-increment*/
insert into employee_payroll(EMPNAME, basic_pay, STARTDATE, gender, department)
values ('Terissa', 6000, '2018-01-03', 'F', 'Marketing');
-- Updating the other department of terissa as Sales
update employee_payroll set department = 'Sales'
where EMPNAME = 'Terissa' and EMPID = 1001;