Q6.
The Production.Product table contains the following columns:

    ProductID (integer)
    ProductName (nvarchar(50))
    ProductCategoryID (integer)
    ListPrice (money)

You write the following SELECT query:

SELECT ProductName, ListPrice FROM Production.Product

You want the results of the query to return the products in ascending order of ProductCategoryID. The products in each category should be sorted by ListPrice, with the highest priced items in each category shown first. Which of the following ORDER BY clauses should you add to the query?

a. ORDER BY ListPrice, ProductCategoryID
b. ORDER BY ProductCategoryID, ListPrice
c. ORDER BY ProductCategoryID ASC, ListPrice DESC
d. ORDER BY ListPrice DESC 

# Answer: c
