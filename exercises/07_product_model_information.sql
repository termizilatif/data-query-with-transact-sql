-- Exercise 7: Retrieving Product Model Information
-- Topic: JOIN with view
-- Task: Return product ID, name, model name and model summary.

SELECT p.ProductID, p.Name AS ProductName, pm.Name AS ProductModelName, pm.Summary
FROM SalesLT.Product AS p
JOIN SalesLT.vProductModelCatalogDescription AS pm
    ON p.ProductModelID = pm.ProductModelID
ORDER BY ProductID;
