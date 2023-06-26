SELECT employee.firstname, employee.lastname, employee.employeeId
FROM sales
RIGHT JOIN employee
on sales.employeeid = employee.employeeid
WHERE sales.employeeid is Null
and employee.title = "Sales Person";

SELECT *
FROM sales
WHERE employeeId = "103";