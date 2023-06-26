SELECT sum(salesAmount) as TotalSale
FROM sales
WHERE soldDate like "2021-%"
UNION
SELECT sum(salesAmount) as TotalSale
FROM sales
WHERE soldDate like "2022-%"
UNION
SELECT sum(salesAmount) as TotalSale
FROM sales
WHERE soldDate like "2023-%"