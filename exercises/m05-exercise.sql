<< Retrieving Product Information >>

Your reports are returning the correct records, but you would like to modify how these records are displayed.

-- Write a query to return the product ID of each product, together with the product name formatted as upper case and a column named ApproxWeight with the weight of each product rounded to the nearest whole unit. Make sure to use the aliases provided, and default column names elsewhere.

SELECT ProductID, UPPER (Name) AS ProductName, ROUND(Weight,0) AS ApproxWeight
FROM SalesLT.Product;