Q17.
You create the following query:

SELECT c.City, c.CountryRegion, SUM(o.TotalDue) AS Revenue
FROM Sales.Customer AS c
JOIN Sales.SalesOrder AS o ON o.CustomerID = c.CustomerID
GROUP BY GROUPING SETS (CountryRegion, (CountryRegion, City), ())

Which three of the following values does this query return?

a. A grand total of revenue for all sales.
b. A revenue total for each individual customer.
c. A revenue total for each CountryRegion.
d. A revenue total for each City.
e. A revenue total for each CountryRegion and City combination.

# Answer: a,c,e
