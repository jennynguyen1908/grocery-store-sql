-- OVERVIEW
-- Total revenue
-- Total products sold
-- Total transactions
-- Average discount
SELECT 
	ROUND(SUM("revenue")::NUMERIC,2) AS total_revenue,
	SUM("Quantity") AS total_products,
	COUNT("TransactionNumber") AS total_transactions,
	ROUND(AVG("Discount")::NUMERIC,2) AS avg_discount
FROM sale_analytics

-- SALE ANALYSIS

-- Top revenue by months
SELECT 
	EXTRACT(MONTH FROM TO_DATE("SalesDate", 'YYYY-MM-DD')) AS MONTH,
	SUM("revenue") AS revenue_by_month
FROM sale_analytics
GROUP BY MONTH
ORDER BY revenue_by_month DESC

-- Highest revenue weekdays
SELECT 
	TRIM(TO_CHAR("SalesDate"::DATE, 'Day')) AS day,
	SUM("revenue") AS revenue_by_day
FROM sale_analytics
WHERE "SalesDate" != ''
GROUP BY day
ORDER BY revenue_by_day DESC

-- Revenue by country and city
SELECT
	"CountryName",
	"CityName",
	SUM("revenue") AS revenue_by_city
FROM sale_analytics 
GROUP BY "CountryName", "CityName" 
ORDER BY revenue_by_city DESC
LIMIT(5)

-- Revenue by product
SELECT 
	"ProductName",
	SUM("revenue") AS revenue_by_product
FROM sale_analytics
GROUP BY "ProductName"
ORDER BY revenue_by_product DESC 
LIMIT(5)

-- CUSTOMER ANALYSIS
-- Average customer spends (show 5 highest)
SELECT 
	ROUND(SUM("revenue")/COUNT("SalesID"),2) AS avg_spend
FROM sale_analytics
GROUP BY "CustomerID"
ORDER BY avg_spend DESC 
LIMIT(5)

-- Average customer spends
SELECT
	ROUND(AVG("revenue"))
FROM sale_analytics

-- Average number of orders by customers
WITH order_by_customer AS(
	SELECT COUNT("SalesID") AS ORDER
	FROM sale_analytics
	GROUP BY "CustomerID"
)

SELECT 
	ROUND(AVG("order")::NUMERIC,0)
FROM order_by_customer

-- Average revenue by customer location (show 5 highest)
SELECT
	"CountryName",
	"CityName",
	ROUND(SUM("revenue")/COUNT("CityName"),2) AS revenue_by_location
FROM sale_analytics
GROUP BY "CountryName", "CityName"
ORDER BY revenue_by_location DESC
LIMIT(5)


-- PRODUCT ANALYSIS
-- Top 10 best selling products (based on number of products sold)
SELECT 
	"ProductName" ,
	COUNT("Quantity" ) AS number_of_products
FROM sale_analytics 
GROUP BY "ProductName"  
ORDER BY number_of_products DESC
LIMIT 5

-- Top 5 lowest selling products (based on number of products sold)
SELECT 
	"ProductName" ,
	COUNT("Quantity" ) AS number_of_products
FROM sale_analytics 
GROUP BY "ProductName"  
ORDER BY number_of_products
LIMIT 5

-- Top 5 products by revenue
SELECT
	"ProductName",
	SUM("revenue") AS total_revenue_by_product
FROM sale_analytics 
GROUP BY "ProductName" 
ORDER BY total_revenue_by_product DESC 
LIMIT 5

-- Top 3 best selling product categories (based on number of products sold)
SELECT 
	"CategoryName",
	COUNT("Quantity") AS number_of_products_per_cat
FROM sale_analytics 
GROUP BY "CategoryName" 
ORDER BY number_of_products_per_cat DESC
LIMIT 3

-- Product category with highest discount
SELECT
	"CategoryName",
	MAX("Discount") AS highest_discount
FROM sale_analytics 
GROUP BY "CategoryName" 
ORDER BY highest_discount DESC 

-- Revenue versus discount
SELECT 
	"Discount",
	ROUND(AVG("revenue")::NUMERIC, 2) AS avg_revenue
FROM sale_analytics
GROUP BY "Discount" 


-- EMPLOYEE ANALYSIS
-- Average revenue per saleperson 
WITH revenue_by_saleperson AS (
	SELECT AVG("revenue") AS revenue
	FROM sale_analytics 
	GROUP BY "EmployeeID")

SELECT 
	ROUND(AVG(revenue),2)
FROM revenue_by_saleperson

-- Number of transactions per saleperson
WITH transaction_by_saleperson AS(
	SELECT COUNT("TransactionNumber") AS transaction
	FROM sale_analytics
	GROUP BY "EmployeeID")

SELECT 
	ROUND(AVG("transaction"),0)
FROM transaction_by_saleperson

