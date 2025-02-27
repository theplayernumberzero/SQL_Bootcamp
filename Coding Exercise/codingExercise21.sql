SELECT e1.name, e2.sales FROM employee e1
WHERE e1.sales > (SELECT AVG(amount) FROM employee e2
WHERE e1.city = e2.city)