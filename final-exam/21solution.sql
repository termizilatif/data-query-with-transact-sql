Q21.
You write the following Transact-SQL code, which deletes customers and their orders:

BEGIN TRY
  BEGIN TRANSACTION
    DELETE FROM Sales.SalesOrder WHERE CustomerID = @CustomerID;
    DELETE FROM Sales.Customer WHERE CustomerID = @CustomerID;
  COMMIT TRANSACTION
END TRY
BEGIN CATCH
  --code to handle exceptions
END CATCH

You want to implement the CATCH block so that:

    Any transactions in process are rolled back.
    The original exception is re-thrown to the calling application.

The XACT_ABORT option is not enabled.

Which code block implements the CATCH block correctly?

--Option 1
THROW;

--Option 2
ROLLBACK TRANSACTION
THROW 50001, ERROR_MESSAGE(), 0;

-- Option 3
IF @@TRANCOUNT > 0
  ROLLBACK TRANSACTION
THROW;

-- Option 4
IF ERROR_NUMBER() > 50000
  ROLLBACK TRANSACTION
THROW @@ERROR;

# Answer: Option 3
