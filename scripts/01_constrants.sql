-- Assign primary keys and create relations between tables
ALTER TABLE customers
ADD CONSTRAINT pk_customers
PRIMARY KEY ("CustomerID");

ALTER TABLE employees
ADD CONSTRAINT pk_employees
PRIMARY KEY ("EmployeeID");

ALTER TABLE products
ADD CONSTRAINT pk_products
PRIMARY KEY ("ProductID");

ALTER TABLE categories
ADD CONSTRAINT pk_categories
PRIMARY KEY ("CategoryID");

ALTER TABLE cities
ADD CONSTRAINT pk_cities
PRIMARY KEY ("CityID");

ALTER TABLE countries
ADD CONSTRAINT pk_countries
PRIMARY KEY ("CountryID");

ALTER TABLE sales
ADD CONSTRAINT pk_sales
PRIMARY KEY ("SalesID");

ALTER TABLE sales
ADD CONSTRAINT fk_sales_customer
FOREIGN KEY ("CustomerID")
REFERENCES customers("CustomerID")

ALTER TABLE sales
ADD CONSTRAINT fk_sales_employee
FOREIGN KEY ("SalesPersonID")
REFERENCES employees("EmployeeID")

ALTER TABLE sales 
ADD CONSTRAINT fk_sales_product
FOREIGN KEY ("ProductID")
REFERENCES products("ProductID")

ALTER TABLE products 
ADD CONSTRAINT fk_product_category
FOREIGN KEY ("CategoryID")
REFERENCES categories("CategoryID")

ALTER TABLE customers 
ADD CONSTRAINT fk_customers_cities
FOREIGN KEY ("CityID")
REFERENCES cities("CityID")

ALTER TABLE cities 
ADD CONSTRAINT fk_cities_countries
FOREIGN KEY ("CountryID")
REFERENCES countries("CountryID")

