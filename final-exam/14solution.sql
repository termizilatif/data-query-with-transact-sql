Q14.
The Sales.Customer table includes the following columns:

    CustomerID (integer)
    FirstName (nvarchar(50))
    LastName (nvarchar(50))

The Sales.SalesOrder table includes the following columns:

    SalesOrderNumber (integer)
    OrderDate (date)
    CustomerID (integer)
    Amount (money)

Some customers have placed mulitple orders over a period of years. You write the following query to retrieve the last date on which each customer placed an order:

SELECT c.CustomerID, c.FirstName, c.LastName,
       -- correlated subquery goes here
       AS LastOrderDate
FROM Sales.Customer AS c;

Which of the following subqueries should you use to complete the query?

-- Option 1
    (SELECT MAX(o.OrderDate)
    FROM Sales.SalesOrder AS o
    WHERE o.CustomerID = c.CustomerID)
-- Option 2
    (SELECT MAX(c.OrderDate)
    FROM Sales.SalesOrder AS c)
-- Option 3
    (SELECT o.OrderDate
    FROM Sales.SalesOrder AS o
    WHERE o.CustomerID = c.CustomerID)
-- Option 4
    (SELECT MAX(c.OrderDate)
    FROM Sales.Customer AS c)

# Answer: Option 1
