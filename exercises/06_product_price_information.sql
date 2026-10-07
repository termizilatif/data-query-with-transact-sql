-- Exercise 6: Retrieving Product Price Information
-- Topic: Subqueries
-- Task: Return products whose list price exceeds the average unit price of all products sold.

SELECT ProductID, Name, ListPrice
FROM SalesLT.Product
WHERE ListPrice >
    (SELECT AVG(UnitPrice) FROM SalesLT.SalesOrderDetail)
ORDER BY ProductID;
