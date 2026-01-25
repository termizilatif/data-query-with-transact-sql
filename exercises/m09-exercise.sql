<< Inserting Products (1) >>

Each AdventureWorks product is stored in the  SalesLT.Product  table, and each product has a unique  ProductID identifier, which is implemented as an IDENTITY column in the SalesLT.Product table.

Products are organized into categories, which are defined in the SalesLT.ProductCategory table.

The products and product category records are related by a common ProductCategoryID identifier, which is an IDENTITY column in the SalesLT.ProductCategory  table. The new product to be inserted is shown in this table:

-- AdventureWorks has started selling the new product shown in the table above. Insert it into the SalesLT.Product table, using default or NULL values for unspecified columns.
INSERT INTO SalesLT.Product (Name, ProductNumber, StandardCost, ListPrice, ProductCategoryID, SellStartDate)
VALUES (‘LED Lights’, ‘LT-L123’, 2.56, 12.99, 37, GETDATE());

-- Once you've inserted the product, run SELECT SCOPE_IDENTITY(); to get the last identity value that was inserted.
SELECT SCOPE_IDENTITY();

-- Add a query to view the row for the product in the SalesLT.Product table.
SELECT *
FROM SalesLT.Product
WHERE ProductID = SCOPE_IDENTITY();