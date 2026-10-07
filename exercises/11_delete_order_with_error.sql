-- Exercise 11: Logging Errors
-- Topic: THROW, error handling
-- Task: Delete an order only if it exists; otherwise throw an error (order ID 0 must fail).

DECLARE @OrderID int = 0;

-- Custom error message if the specified order doesn't exist
DECLARE @error VARCHAR(50) = 'Order #' + CAST(@OrderID AS VARCHAR(10)) + ' does not exist';

IF NOT EXISTS (SELECT * FROM SalesLT.SalesOrderHeader WHERE SalesOrderID = @OrderID)
BEGIN
    THROW 50001, @error, 0;
END
ELSE
BEGIN
    DELETE FROM SalesLT.SalesOrderDetail WHERE SalesOrderID = @OrderID;
    DELETE FROM SalesLT.SalesOrderHeader WHERE SalesOrderID = @OrderID;
END;
