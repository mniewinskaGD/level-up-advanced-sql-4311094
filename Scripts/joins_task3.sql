SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM sales sls
FULL OUTER JOIN customer cus
on sls.customerid = cus.customerid;

SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM sales sls
JOIN customer cus
on sls.customerid = cus.customerid
-- UNION WITH CUSTOMERS WHO HAVE NO SALES
UNION
SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM customer cus
LEFT JOIN sales sls
on cus.customerId = sls.customerId
WHERE sls.salesId is NULL
-- UNION WITH SALES MISSING CUSTOMER DATA
UNION
SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM sales sls
LEFT JOIN customer cus
on cus.customerId = sls.customerId
WHERE cus.customerId is NULL;