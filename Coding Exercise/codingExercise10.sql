SELECT 
    category, 
    sale_date, 
    COUNT(*) AS total_items_sold, 
    SUM(amount) AS total_sales_amount
FROM 
    sales
GROUP BY 
    category, sale_date
ORDER BY 
    category ASC, sale_date ASC;