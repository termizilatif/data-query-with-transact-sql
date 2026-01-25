<< Retrieving Product Price Information >>

AdventureWorks products each have a standard cost that indicates the cost of manufacturing the product, and a list price that indicates the recommended selling price for the product. This data is stored in the SalesLT.Product table. Whenever a product is ordered, the actual unit price at which it was sold is also recorded in the SalesLT.SalesOrderDetail table. Use subqueries to compare the cost and list prices for each product with the unit prices charged in each sale.

-- Retrieve the product ID, name, and list price for each product where the list price is higher than the average unit price for all products that have been sold.

SELECT ProductID, Name, ListPrice
FROM SalesLT.Product
WHERE ListPrice >
(SELECT AVG(UnitPrice) FROM SalesLT.SalesOrderDetail)
ORDER BY ProductID;