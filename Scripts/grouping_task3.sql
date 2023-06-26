SELECT e.employeeId, e.firstName, e.lastName, count(s.salesID) as NumOfCarsSold
FROM employee e
JOIN sales s
ON s.employeeId = e.employeeId
WHERE s.soldDate >= date('now', 'start of year')
GROUP BY e.employeeId
HAVING NumOfCarsSold > 5