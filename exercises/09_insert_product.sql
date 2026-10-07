-- Exercise 9: Inserting Products
-- Topic: INSERT, SCOPE_IDENTITY
-- Task: Insert the new product 'LED Lights', return its identity value and view the new row.

INSERT INTO SalesLT.Product
    (Name, ProductNumber, StandardCost, ListPrice, ProductCategoryID, SellStartDate)
VALUES
    ('LED Lights', 'LT-L123', 2.56, 12.99, 37, GETDATE());

SELECT SCOPE_IDENTITY();

SELECT *
FROM SalesLT.Product
WHERE ProductID = SCOPE_IDENTITY();
