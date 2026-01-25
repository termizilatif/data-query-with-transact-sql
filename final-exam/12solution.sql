Q12.
You write the following query:

SELECT ProductID, IIF(ISNUMERIC(ISNULL(Code, 0)) = 1,
                  IIF(ISNULL(TRY_CAST(Code AS decimal), 0) >= 20, 'Special', 'Standard'),
                  'Custom') AS ItemType
FROM Inventory.Product;

What value is returned in the ItemType column for a product with a Code value of 'X21'?

a. NULL
b. Standard
c. Special
d. Custom

# Answer: d
