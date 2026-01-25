Q3.
The Sales.LineItem table includes the following columns:

    ProductID (integer)
    Quantity (integer)
    Price (varchar(6))

The Price column contains decimal numeric values, for example 14.79.

You write a query that returns each ProductID and a column named Subtotal, in which the values for Quantity and Price are multiplied together. Which two of the following queries return the correct results?

a. SELECT ProductID, Quantity * Price AS Subtotal FROM Sales.LineItem;
b. SELECT ProductID, Quantity * CAST(Price AS money) AS Subtotal FROM Sales.LineItem;
c. SELECT ProductID, STR(Quantity) * Price AS Subtotal FROM Sales.LineItem;
d. SELECT ProductID, Quantity * CONVERT(money, Price) AS Subtotal FROM Sales.LineItem;
e. SELECT ProductID, CONVERT(money, Quantity * Price) AS Subtotal FROM Sales.LineItem;

# Answer: b,d
