Q8.
You write the following query to retrieve details of products that have been ordered:

SELECT p.ProductName, p.SupplierID, o.OrderDate, o.Quantity
FROM Sales.Order AS o
JOIN Inventory.Product AS p ON o.ProductID = p.ProductID;

You want to modify this query so that it includes products that have not been ordered, with NULL values for the OrderDate and Quantity columns. To which of the following should you change the JOIN clause?

a. INNER JOIN Inventory.Product AS p ON o.ProductID = p.ProductID;
b. LEFT JOIN Inventory.Product AS p ON o.ProductID = p.ProductID;
c. RIGHT JOIN Inventory.Product AS p ON o.ProductID = p.ProductID;
d. CROSS JOIN Inventory.Product AS p;

# Answer: c
