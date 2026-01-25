Q19.
The Sales.Customer table contains the following columns:

Column Name 	Data Type 	NULL 	Default
CustomerID 	integer 	False 	Identity
FirstName 	nvarchar(50) 	False 	
MiddleName 	nvarchar(50) 	True 	
LastName 	nvarchar(50) 	False 	
Active 		bit 		False 	1

You want to insert a new record for the following customer:

    First Name: Sophia
    Middle Name: none
    Last Name: Garner
    Active: yes

Which two of the following INSERT statements successfully insert the record?

-- Option 1
INSERT INTO Sales.Customer (FirstName, LastName)
VALUES
('Sophia', 'Garner');

-- Option 2
INSERT INTO Sales.Customer
VALUES
('Sophia', 'Garner');

-- Option 3
INSERT INTO Sales.Customer
VALUES
('Sophia', NULL, 'Garner', DEFAULT);

-- Option 4
INSERT INTO Sales.Customer
VALUES
(DEFAULT, 'Sophia', DEFAULT, 'Garner', DEFAULT);

-- Option 5
INSERT INTO Sales.Customer
VALUES
(IDENTITY, 'Sophia', NULL, 'Garner', NULL);

# Answer: Option 1,3
