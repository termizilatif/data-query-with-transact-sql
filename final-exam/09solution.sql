Q9.
You write the following queries to retrieve all customers and customers who have placed orders.

SELECT CustomerID, FirstName, LastName
FROM Sales.Customer
_____________
SELECT o.CustomerID, c.FirstName, c.LastName
FROM Sales.Order AS o
JOIN Sales.Customer AS c ON o.CustomerID = c.CustomerID
ORDER BY LastName

Which statement should you use to combine the queries so that the results include only customers who have not placed any orders?

# Answer: EXCEPT
