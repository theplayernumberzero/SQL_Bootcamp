-- Step 1: Create a CTE to calculate the total rental count and total rental amount for each customer
WITH customer_totals AS (
    SELECT c.customer_id, c.first_name, c.last_name,
        COUNT(r.rental_id) AS rental_count,
        SUM(p.amount) AS total_amount
    FROM customer c
    JOIN rental r ON c.customer_id = r.customer_id
    JOIN payment p ON c.customer_id = p.customer_id AND p.rental_id = r.rental_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)

-- Step 2: Use the CTE to filter customers who have rented more than the average number of films
SELECT customer_id, first_name, last_name, rental_count, total_amount
FROM customer_totals
WHERE rental_count > (SELECT AVG(rental_count) FROM customer_totals);