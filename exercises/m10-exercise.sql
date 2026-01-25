<< Writing a Script to Insert an Order Header >>

You want to create reusable scripts that make it easy to insert sales orders. You plan to create a script to insert the order header record, and a separate script to insert order detail records for a specified order header. Both scripts will make use of variables to make them easy to reuse. Your script to insert an order header must enable users to specify values for the order date, due date, and customer ID.

You are asked to include the following sales order:


-- Fill in the variable names to complete the DECLARE statements. You can infer these names from the INSERT statement further down the script.
DECLARE @OrderDate datetime = GETDATE();
DECLARE @DueDate datetime = DATEADD(dd, 7, GETDATE());
DECLARE @CustomerID int = 1;

-- Finish the INSERT query. Because SalesOrderID is an IDENTITY column, this ID will automatically be generated for you. You can use the hardcoded value 'CARGO TRANSPORT 5' for the ShipMethod field.
INSERT INTO SalesLT.SalesOrderHeader (OrderDate, DueDate, CustomerID, ShipMethod)
VALUES (@OrderDate, @DueDate, @CustomerID, 'CARGO TRANSPORT 5');

-- Use SCOPE_IDENTITY() to print out the ID of the new sales order header.
PRINT SCOPE_IDENTITY();