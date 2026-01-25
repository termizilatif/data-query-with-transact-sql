<< Retrieving Customer Addresses >>

Customers can have two kinds of address: a main office address and a shipping address. The accounts department wants to ensure that the main office address is always used for billing, and have asked you to write a query that clearly identifies the different types of address for each customer.

-- Write a query that retrieves the company name, first line of the street address, city, and a column named AddressType with the value 'Billing' for customers where the address type in the  SalesLT.CustomerAddress table is 'Main Office'. Make sure to use the aliases provided, and default column names elsewhere.

SELECT c.CompanyName, a.AddressLine1, a.City, ‘Billing’ AS AddressType
FROM SalesLT.Customer AS c
JOIN SalesLT.CustomerAddress AS ca
ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address AS a
ON ca.AddressID = a.AddressID
WHERE ca.AddressType = ‘Main Office’;