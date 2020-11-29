/*UC 12:
Retrieve queries with new table strcuture*/
use payroll_service;

/*UC 4*/
select EmpID,BasicPay,Deductions,IncomeTax,TaxablePay,NetPay from payroll;

/*UC 5*/
select e.EmpName ,p.BasicPay,p.Deductions,p.IncomeTax,p.TaxablePay,NetPay from employee e inner join payroll p on e.EmpId=p.EmpId;

/*UC 7*/
select e.Gender ,min(p.BasicPay- p.Deductions- p.TaxablePay)as MinNetPay from payroll p inner join Employee e on e.EmpId=p.EmpId group by e.Gender;
select e.Gender ,max(p.BasicPay- p.Deductions- p.TaxablePay)as MaxNetPay from payroll p inner join Employee e on e.EmpId=p.EmpId group by e.Gender;
select e.Gender ,sum(p.BasicPay- p.Deductions- p.TaxablePay)as SumNetPay from payroll p inner join Employee e on e.EmpId=p.EmpId group by e.Gender;
select e.Gender ,avg(p.BasicPay- p.Deductions- p.TaxablePay)as AvgNetPay from payroll p inner join Employee e on e.EmpId=p.EmpId group by e.Gender;
