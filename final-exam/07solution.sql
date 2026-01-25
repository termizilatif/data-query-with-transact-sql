Q7.
You write the following Transact-SQL query to retrieve data from the Sales.SalesOrderHeader table:

SELECT SalesOrderID, OrderDate, Amount
FROM Sales.SalesOrderHeader

You want to limit the results to include only sales in the first calendar quarter of 2015. Which two of the following WHERE clauses can you use to accomplish this goal? (assume US formats for dates, for example 3/31/2015 represents March 31st 2015)

a. WHERE OrderDate BETWEEN '1/1/2015' AND '3/31/2015'
b. WHERE OrderDate > '1/1/2015' AND OrderDate < '3/31/2015'
c. WHERE OrderDate >= '1/1/2015' AND OrderDate <= '3/31/2015'
d. WHERE OrderDate BETWEEN '12/31/2014' AND '4/1/2015'
e. WHERE OrderDate IN ('1/1/2015', '3/31/2015')

# Answer: a,c
