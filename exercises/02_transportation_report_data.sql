-- Exercise 2: Retrieving Transportation Report Data
-- Topic: DISTINCT
-- Task: List every customer location (City, StateProvince) without duplicates.

SELECT DISTINCT City, StateProvince
FROM SalesLT.Address;
