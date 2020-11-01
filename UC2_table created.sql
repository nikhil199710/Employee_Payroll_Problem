/*UC2 table created*/
create table employee_payroll
(
  EmployeeID int not null identity(1,1) primary key,
  EmployeeName varchar(255),
  Salary float,
  startDate Date
  );
 