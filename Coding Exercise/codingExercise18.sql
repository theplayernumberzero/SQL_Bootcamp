SELECT passenger_name,SUM(total_amount) FROM tickets t
INNER JOIN bookings b
ON t.book_ref=b.book_ref
GROUP BY passenger_name
ORDER BY SUM(total_amount) DESC
