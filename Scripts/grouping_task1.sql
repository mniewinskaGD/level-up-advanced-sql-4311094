SELECT e.employeeId, e.firstName, e.lastName, sum(s.salesAmount) as TotalSale
FROM employee e
JOIN sales s
on s.employeeId = e.employeeId
GROUP BY e.employeeId
ORDER BY TotalSale DESC

SELECT sum(salesAmount)
FROM sales
WHERE employeeId = "3"

SELECT e.employeeId, e.firstName, e.lastName, count(s.salesId) as NumOfCarsSold
FROM employee e
JOIN sales s
on s.employeeId = e.employeeId
GROUP BY e.employeeId
ORDER BY NumOfCarsSold DESC

SELECT count(salesId)
FROM sales
WHERE employeeId = "3"