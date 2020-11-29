
/*UC 9:
Added columns of basic pay, deductions, taxable pay, income tax and net pay*/
use payroll_service;
/*Renaming the salary column to basicPay*/
EXEC sp_RENAME 'employee_payroll.Salary' , 'BasicPay', 'COLUMN';
/*Altering the table*/
alter table employee_payroll add Deductions decimal;
alter table employee_payroll add TaxablePay decimal;
alter table employee_payroll add IncomeTax decimal;
alter table employee_payroll add NetPay decimal;
select * from employee_payroll;
