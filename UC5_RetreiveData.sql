  /*UC5-Getdata*/
  select Salary from employee_payroll where EmployeeName='nikhil';
  select * from employee_payroll where startDate between 
  CAST('2008-1-8' as Date) and GETDATE();
  