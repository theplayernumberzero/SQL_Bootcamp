SELECT City, AVG(Amount) AS AverageAmount
FROM Sales
GROUP BY City
HAVING COUNT(TransactionID) > 2 AND AVG(Amount) > 150.00
ORDER BY AVG(Amount) DESC;