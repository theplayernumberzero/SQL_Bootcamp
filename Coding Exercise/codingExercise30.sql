SELECT region, sales_date, amount
LEAD(amount) OVER (PARTITION BY region ORDER BY sales_date)
FROM sale;