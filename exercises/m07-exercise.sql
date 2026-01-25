<< Retrieving Product Information >>

AdventureWorks sells many products that are variants of the same product model. You must write queries that retrieve information about these products.

-- Retrieve the product ID, product name, product model name, and product model summary for each product from the SalesLT.Product table and the SalesLT.vProductModelCatalogDescription view. Make sure to use the aliases provided, and default column names elsewhere.

SELECT p.ProductID, p.Name AS ProductName, pm.Name AS ProductModelName, pm.Summary
FROM SalesLT.Product AS p
JOIN SalesLT.vProductModelCatalogDescription AS pm
ON p.ProductModelID = pm.ProductModelID
ORDER BY ProductID;