Q4.
The HumanResources.Employee table contains the following values:

EmployeeID 	FirstName 	MiddleName 	  LastName
1 		Dan		NULL		  Drayton
2 		Victoria	(an empty string) Gray
3 		Rajab		NULL 		  Shammas

You write the following query:

SELECT EmployeeID, FirstName + ' ' + NULLIF(MiddleName, '') + ' ' + LastName AS EmployeeName
FROM HumanResources.Employee;

In the results returned by this query, what does the EmployeeName column contain?

a. NULL for employees 1, 2, and 3.
b. NULL for employees 1 and 3, the FirstName and LastName for employee 2.
c. The FirstName, an empty string, and LastName for employees 1, 2, and 3.
d. An empty string for employees 1, 2, and 3.

# Answer: a
