SELECT e.firstName, e.lastName,
SUM(CASE WHEN soldDate like '2021-01-%' THEN salesAmount
END )AS JanuarySale,
SUM(CASE WHEN soldDate like '2021-02-%' THEN salesAmount
END )AS FebruarySale,
SUM(CASE WHEN soldDate like '2021-03-%' THEN salesAmount
END )AS MarchSale,
SUM(CASE WHEN soldDate like '2021-04-%' THEN salesAmount
END )AS AprilSale,
SUM(CASE WHEN soldDate like '2021-05-%' THEN salesAmount
END )AS MaySale,
SUM(CASE WHEN soldDate like '2021-06-%' THEN salesAmount
END )AS JuneSale
FROM employee e
JOIN sales s
ON s.employeeId = e.employeeId
GROUP BY e.firstName, e.lastName;

SELECT sum(salesAmount)
FROM sales
JOIN employee
ON employee.employeeId = sales.employeeId
WHERE firstName = 'Barnabas' and lastName = 'Pinnegar'
and soldDate like '2021-02-%';