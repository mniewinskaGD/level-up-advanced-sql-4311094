SELECT strftime('%Y', soldDate) as year_sale, strftime('%m', soldDate) as monthly_sale, sum(s.salesAmount),
SUM(sum(s.salesAmount)) OVER(PARTITION BY strftime('%Y', soldDate)) as yearly_sale
FROM sales s
GROUP BY year_sale, monthly_sale
ORDER BY year_sale desc, monthly_sale desc


--test
SELECT sum(salesAmount)
FROM sales
WHERE soldDate like '2023-01-%'

SELECT sum(salesAmount)
FROM sales
WHERE soldDate like '2021-%'