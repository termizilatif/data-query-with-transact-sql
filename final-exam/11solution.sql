Q11.
You write the following query to return the last date on which each product was sold. Products that have never been sold should return a NULL in the LastSold column.

SELECT p.ProductName, MAX(o.OrderDate) AS LastSold
FROM Sales.SalesOrder AS o
JOIN Sales.SalesOrderDetail AS od ON o.SalesOrderID = od.SalesOrderID
RIGHT JOIN Inventory.Product AS p ON od.ProductID = p.ProductID

Which of the following clauses should you add to complete the query?

a. ORDER BY LastSold DESC;
b. WHERE MAX(o.OrderDate) IS NOT NULL;
c. GROUP BY p.ProductName;
d. HAVING o.OrderDate IS NOT NULL;

# Answer: c
