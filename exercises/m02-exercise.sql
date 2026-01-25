<< Retrieving Transportation Report Data >>

The logistics manager at AdventureWorks has asked you to generate some reports containing details of the company's customers to help reduce transportation costs. For starters, you need to produce a list of all of your customers' locations.

-- Finish the Transact-SQL query that retrieves all values for City and StateProvince, without duplicates, from the Address table.

SELECT DISTINCT City, StateProvince
FROM SalesLT.Address;