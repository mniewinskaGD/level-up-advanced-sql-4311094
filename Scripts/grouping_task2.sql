SELECT e.employeeId, e.firstName, e.lastName, MAX(s.salesAmount), MIN(s.salesAmount)
FROM employee e
JOIN sales s
ON s.employeeId = e.employeeId
WHERE s.soldDate >= date('now', 'start of year')
GROUP BY e.employeeId

SELECT MIN(salesAmount), MAX(salesAmount)
FROM sales
WHERE employeeId = "3"
and soldDate >= date('now', 'start of year')