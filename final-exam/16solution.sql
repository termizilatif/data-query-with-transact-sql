Q16.
You write the following query that includes a common table expression:

WITH CustomerNames (CustomerID, CustomerName)
AS
(
  SELECT CustomerID, CONCAT(FirstName, CONCAT(' ', LastName))
  FROM Sales.Customer
)
-- Retrieve customer names and total revenue

Which of the following SELECT statements can you use to complete the query so that it uses the CTE and returns the customer name and total sales amount for each customer that has placed an order?

-- Option 1
UNION ALL
SELECT CustomerID, SUM(Amount) AS CustomerRevenue
FROM Sales.SalesOrder
GROUP BY CustomerName;

-- Option 2
SELECT c.CustomerName, SUM(o.Amount) AS CustomerRevenue
FROM CustomerNames AS c
JOIN Sales.SalesOrder AS o ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName;

-- Option 3
SELECT c.FirstName + ' ' c.LastName AS CustomerName, SUM(o.Amount) AS CustomerRevenue
FROM Sales.Customer AS c
JOIN Sales.SalesOrder AS o ON o.CustomerID = c.CustomerID
GROUP BY CustomerName;

-- Option 4
SELECT c.CustomerName, (SELECT SUM(Amount) FROM Sales.SalesOrder) AS CustomerRevenue
FROM CustomerNames AS c
GROUP BY c.CustomerName;

# Answer: Option 2
