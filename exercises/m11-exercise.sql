<< Logging Errors >>

You are implementing a Transact-SQL script to delete orders, and you want to handle any errors that occur during the deletion process. The following code can be used to delete order data:

    DECLARE @OrderID int = <the_order_ID_to_delete>;
    DELETE FROM SalesLT.SalesOrderDetail WHERE SalesOrderID = @OrderID;
    DELETE FROM SalesLT.SalesOrderHeader WHERE SalesOrderID = @OrderID;

However, this code always succeeds, even when the specified order does not exist.

-- Modify the code to check for the existence of the specified order ID before attempting to delete it.
DECLARE @OrderID int = 0

-- If the order does not exist, your code should throw an error. Otherwise, it should go ahead and delete the order data. If you coded the script correctly, your code should generate an error when you run it, as the order with ID 0 does not exist.
DECLARE @error VARCHAR(30) = 'Order #' + cast(@OrderID as VARCHAR) + ' does not exist';

IF NOT EXISTS (SELECT * FROM SalesLT.SalesOrderHeader WHERE SalesOrderID = @OrderID)
BEGIN

	THROW 50001, @error, 0;
END
ELSE
BEGIN
	DELETE FROM SalesLT.SalesOrderDetail WHERE SalesOrderID = @OrderID;
	DELETE FROM SalesLT.SalesOrderHeader WHERE SalesOrderID = @OrderID;
END