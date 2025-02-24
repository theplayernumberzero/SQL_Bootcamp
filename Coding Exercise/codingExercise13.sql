SELECT name || " - " || category || ": $" || price AS product_summary
FROM products
ORDER BY name ASC