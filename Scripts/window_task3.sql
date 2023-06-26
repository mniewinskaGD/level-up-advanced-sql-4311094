SELECT strftime('%Y-%m', soldDate) as current_month, count(salesId) as current_month_sale,
LAG(count(salesId), 1,0) OVER current_month as last_month_sale
FROM sales
GROUP BY current_month
WINDOW current_month AS (ORDER BY strftime('%Y-%m', soldDate))
ORDER BY current_month