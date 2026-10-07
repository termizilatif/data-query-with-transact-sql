-- Exercise 8: Retrieving Regional Sales Totals
-- Topic: GROUP BY ROLLUP
-- Task: Add a grand total and country/region subtotals to revenue by state/province.

SELECT a.CountryRegion, a.StateProvince, SUM(soh.TotalDue) AS Revenue
FROM SalesLT.Address AS a
JOIN SalesLT.CustomerAddress AS ca
    ON a.AddressID = ca.AddressID
JOIN SalesLT.Customer AS c
    ON ca.CustomerID = c.CustomerID
JOIN SalesLT.SalesOrderHeader AS soh
    ON c.CustomerID = soh.CustomerID
GROUP BY ROLLUP(a.CountryRegion, a.StateProvince)
ORDER BY a.CountryRegion, a.StateProvince;
