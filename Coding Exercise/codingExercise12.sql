SELECT review_id, review_text, LENGTH(review_text) AS review_length
FROM customer_reviews
WHERE product_id = 101 AND LOWER(review_text) LIKE '%great%'
ORDER BY review_length;