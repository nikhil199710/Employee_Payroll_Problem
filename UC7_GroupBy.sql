/*Denoting the Sum Of the salary Count of employee, Minimum Salary And Maximum salary
from the Employee Payroll table grouping by Gender for females  */
select SUM(SALARY) as 'Sum_Salary', MIN(SALARY) as 'Minimum_Salary', 
MAX(SALARY) as 'Maximum_Salary', COUNT(SALARY) as 'Number_Of_Females',
AVG(SALARY) as 'Average_Salary' from employee_payroll where gender = 'F' group by gender;