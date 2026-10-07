-- Exercise 5: Retrieving Product Information
-- Topic: Scalar functions
-- Task: Return product ID, upper-case name and weight rounded to the nearest whole unit.

SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight
FROM SalesLT.Product;
