-- Exercise 4: Retrieving Customer Addresses
-- Topic: Multi-table JOIN, literal column
-- Task: Return company, street address, city and an AddressType of 'Billing' for Main Office addresses.

SELECT c.CompanyName, a.AddressLine1, a.City, 'Billing' AS AddressType
FROM SalesLT.Customer AS c
JOIN SalesLT.CustomerAddress AS ca
    ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address AS a
    ON ca.AddressID = a.AddressID
WHERE ca.AddressType = 'Main Office';
