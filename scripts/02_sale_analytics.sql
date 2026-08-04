-- Create revenue column based on sale and product data
CREATE VIEW sales_with_revenue AS
SELECT 
	s."SalesID",
	ROUND(
		((s."Quantity" * p."Price") - (p."Price" * s."Discount"))::numeric, 2) AS Revenue
FROM sales AS s
LEFT JOIN products AS p
ON s."ProductID" = p."ProductID" 

--- Create operational database
CREATE VIEW sale_analytics AS 

SELECT 
	s."SalesID",
	c."CustomerID",
	e."EmployeeID",
	p."ProductName",
	cat."CategoryName",
	s."Quantity",
	s."Discount",
	revenue."revenue",
	s."SalesDate",
	s."TransactionNumber",
	cities."CityName",
	countries."CountryName"
	
FROM sales AS s
INNER JOIN employees AS e ON s."SalesPersonID" = e."EmployeeID" 
INNER JOIN customers AS c ON s."CustomerID" = c."CustomerID" 
INNER JOIN cities ON e."CityID" = cities."CityID" 
INNER JOIN countries ON cities."CountryID" = countries."CountryID" 
INNER JOIN products AS p ON s."ProductID" = p."ProductID"
INNER JOIN categories AS cat ON p."CategoryID" = cat."CategoryID" 
INNER JOIN sales_with_revenue AS revenue ON s."SalesID" = revenue."SalesID" 

SELECT *
FROM sale_analytics
