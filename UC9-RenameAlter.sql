/*UC9-RenameAlter*/

Exec sp_rename 'employee_payroll.Salary','Basic_pay', 'column';
alter table employee_payroll add Deductions float;
alter table employee_payroll add Taxable_Pay float;
alter table employee_payroll add Income_Tax float;
alter table employee_payroll add Net_Pay float;