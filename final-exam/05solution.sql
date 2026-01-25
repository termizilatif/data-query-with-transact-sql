Q5.
The Sales.CustomerAddress table contains the following columns:

    CustomerID (integer)
    AddressID (integer)
    StreetAddress (nvarchar(100))
    City (nvarchar(30))
    CountryRegion (nvarchar(30))

You write a query to return City and CountryRegion values in the table. Each unique combination of City and CountryRegion should appear only once in the results. Which of the following queries returns the correct results?

a. SELECT City, CountryRegion FROM Sales.CustomerAddress;
b. SELECT DISTINCT City, CountryRegion FROM Sales.CustomerAddress;
c. SELECT TOP 1 City, CountryRegion FROM Sales.CustomerAddress ORDER BY City, CountryRegion;
d. SELECT City + CountryRegion FROM Sales.CustomerAddress;

# Answer: b
