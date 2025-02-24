SELECT 
    order_id, 
    product_id, 
    quantity, 
    unit_price,
    CASE 
        WHEN quantity > 1 THEN (quantity * unit_price * 0.9) + shipping_fee
        ELSE quantity * unit_price + shipping_fee
    END AS total_price
FROM 
    sales_orders;