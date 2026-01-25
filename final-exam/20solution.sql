Q20.
The Inventory.Product table contains the following columns:

    ProductID (integer)
    ProductName (nvarchar(100))
    ListPrice (money)
    Discontinued (bit)
    LastUpdated (datetime)

You want to increase the list price of all non-discontinued products by 10%. The LastUpdated column for all records that are modified should be set to the current date and time.

Which of the following UPDATE statements performs the required modification correctly?

-- Option 1
UPDATE Inventory.Product
SET ListPrice = ListPrice * 1.1,
    Discontinued = 0
WHERE LastUpdated = GETDATE();

-- Option 2
UPDATE Inventory.Product
SET ListPrice = ListPrice * 1.1,
WHERE LastUpdated = GETDATE()
AND Discontinued = 0;

-- Option 3
UPDATE Inventory.Product
SET ListPrice = ListPrice * 1.1,
    LastUpdated = GETDATE(),
    Discontinued = 0;

-- Option 4
UPDATE Inventory.Product
SET ListPrice = ListPrice * 1.1,
    LastUpdated = GETDATE()
WHERE Discontinued = 0;

# Answer: Option 4
