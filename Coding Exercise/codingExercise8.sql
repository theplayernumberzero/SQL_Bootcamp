SELECT COUNT(OrderID) AS TotalOrders, AVG(Amount) AS AverageOrderAmount
FROM Orders WHERE OrderDate BETWEEN '2023-08-01' AND '2023-08-31';
