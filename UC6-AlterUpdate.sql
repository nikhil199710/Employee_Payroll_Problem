/*UC6-AlterUpdate*/
  alter table employee_payroll add gender char(1);
  update employee_payroll set gender = 'M' where EmployeeName='nikhil';
  update employee_payroll set gender = 'F' where EmployeeName='kumar';
  update employee_payroll set gender = 'F' where EmployeeName='sakshi';