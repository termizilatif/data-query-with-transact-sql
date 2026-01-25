Q13.
You write the following query to return the lowest sales amount for each salesperson.

SELECT Salesperson, MIN(Amount) AS LowestSale
FROM Sales.vSalesOrders
GROUP BY Salesperson
_____________________________________________

Which clause should you add to the query so that the results include only salespeople whose lowest sales amount is greater than the average sale amount for all sales

# Answer: HAVING MIN(Amount) > (SELECT AVG(Amount) FROM Sales.vSalesOrders)
