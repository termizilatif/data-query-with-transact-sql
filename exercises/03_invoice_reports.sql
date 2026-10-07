-- Exercise 3: Generating Invoice Reports
-- Topic: JOIN
-- Task: Return company name, sales order ID and total due for each order.

SELECT c.CompanyName, oh.SalesOrderID, oh.TotalDue
FROM SalesLT.Customer AS c
JOIN SalesLT.SalesOrderHeader AS oh
    ON oh.CustomerID = c.CustomerID;
