SELECT region, sales_date, amount
FIRST_VALUE(amount) OVER (PARTITION BY region ORDER BY sales_date)
FROM sale;