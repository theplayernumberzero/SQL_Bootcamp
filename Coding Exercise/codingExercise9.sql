SELECT category, SUM(quantity) as total_quantity, SUM(sale_amount) as total_sales_amount
FROM sales_data
GROUP BY category
ORDER BY total_sales_amount DESC