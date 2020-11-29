/*UC 10:
Make employee part of multiple departments*/
use payroll_service;
/*Adding additional data to table*/
update employee_payroll set PhnNo=7206183244, Address='kolkata', Department='Sales', BasicPay=72000, Deductions=5000, TaxablePay=60000, NetPay=44000 where EmpName='Nikhil';
/*Adding multiple department values for a single person*/
insert into employee_payroll values('Kartikeya',72000,'2020-09-18','M',7206183244,'Marketing','kolkata',5000,60000,2000,44000);
