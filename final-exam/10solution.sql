Q10.
The sales department occasionally run promotions that offer a discount on sales orders. Some promotions are associated with a specific product, while others are more general.

The Inventory.Product table contains the following columns:

    ProductID (integer)
    ProductName (nvarchar(50))
    ListPrice (money)

The Sales.Promotion table contains the following columns:

    PromotionID (integer)
    StartDate (date)
    EndDate (date)
    ProductID (integer - can be NULL)
    Discount (decimal)

You write the following query, which returns all product-based promotions and the products with which they are associated:

SELECT prm.StartDate, prm.EndDate, prm.Discount, prd.ProductName, prd.ListPrice
FROM Sales.Promotion as prm
JOIN Inventory.Product as prd ON prm.ProductID = prd.ProductID;

How should you modify the JOIN clause so that the query returns all promotions (with NULL ProductName and ListPrice values for promotions that are not associated with a product) and all products (with NULL StartDate, EndDate, and Discount values for products that have never been associated with a promotion)?

a. LEFT OUTER JOIN Inventory.Product as prd ON prm.ProductID = prd.ProductID;
b. FULL OUTER JOIN Inventory.Product as prd ON prm.ProductID = prd.ProductID;
c. RIGHT OUTER JOIN Inventory.Product as prd ON prm.ProductID = prd.ProductID;
d. CROSS JOIN Inventory.Product as prd; 

# Answer: b
