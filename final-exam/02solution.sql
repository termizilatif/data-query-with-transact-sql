Q2. The Sales.SalesOrder table contains the following columns:

    OrderNumber (integer)
    OrderDate (datetime)
    CustomerID (integer)
    Subtotal (money)
    Tax (money)

You write a query to return the OrderNumber for each row and a column named Total, which is calculated as Subtotal added to Tax. Which of the following queries produces the required results?

a. SELECT OrderNumber, Subtotal, Tax FROM Sales.SalesOrder;
b. SELECT OrderNumber, Subtotal + Tax FROM Sales.SalesOrder;
c. SELECT OrderNumber, Subtotal + Tax AS Total FROM Sales.SalesOrder;
d. SELECT OrderNumber, Total FROM Sales.SalesOrder;

# Answer: c
