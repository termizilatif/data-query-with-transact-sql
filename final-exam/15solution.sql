Q15.
You write the folowing code in SQL Server Management Studio

DECLARE @tab AS table(ProductID integer, StockCount integer)
INSERT INTO @tab
SELECT ProductID, InStock + OnOrder
FROM Inventory.Product;
GO
SELECT * FROM @tab;

When you execute the code, an error occurs. Which two of the following actions could you take to prevent the error?

# Answer: Remove the GO command; Use a temporary table named #tab instead of the @tab variable
