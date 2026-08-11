# Sale Analysis 
## Introduction
This analysis explores key business metrics from a grocery store sales database. The sections below summarize the insights obtained from the SQL queries in `03_business_queries.sql`.

## 📈 Store sale overview
| KPI | Value |
|-----|------:|
| Total Revenue | 4,455,971,204.36 |
| Products Sold | 87,882,708 |
| Transactions | 6,758,125 |
| Average Discount | 30% |

## 💰 Sale performance
#### 1. Months with highest revenue (showing top 5)

| Month | Revenue |
|-------|--------:|
| Jan | 1,104,481,819.67 |
| Mar | 1,061,640,739.74 |
| Apr | 1,025,778,751.60 |
| Feb | 955,675,365.63 |
| May | 308,394,527.72 |

#### 2. Week days with highest revenue (descending)

| Day    |Revenue|
|:-------|--------------:|
|Wednesday|  649,903,023.91|
|Monday   |  649,740,822.05|
|Tuesday  |  649,168,435.98|
|Friday   |  616,290,062.92|
|Sunday   |  615,920,167.60|
|Saturday |  615,518,063.98||
|Thursday |  614,985,123.34|

#### 3. Cities and countries with highest revenue (showing top 5)

| Country  |City    |Revenue|
| :------------|------------|---------------|
| United States|Lubbock     |   581,910,472.95|
| United States|Baltimore   |   389,606,341.15|
| United States|Columbus    |   387,604,027.55|
| United States|New Orleans |   384,606,512.53|
| United States|Indianapolis|   194,797,924.05|

#### 4. Products with highest revenue (showing top 5)

| Product               |Revenue|
|-------------------------- |------------------|
| Bread - Calabrese Baguette|       19,404,731.13|
| Shrimp - 31/40            |       19,255,073.05|
| Tia Maria                 |       19,231,712.99|
| Puree - Passion Fruit     |       19,223,287.91|
| Zucchini - Yellow         |       19,078,215.92|

## 👥 Customer analysis
#### 1. Average customer spends
Avg customer spends|
-----|
  659|

#### 2. Average number of orders per customer
Number of orders |
------|
   68|

#### 3. Average spends per customer location (showing top 5)

Country Name  |City Name    |Customer spends|
-------------|------------|-------------------|
United States|Indianapolis|             663.57|
United States|Anchorage   |             663.34|
United States|Anaheim     |             662.60|
United States|Las Vegas   |             662.37|
United States|Baltimore   |             661.52|

## 🛒 Product analysis
#### 1. Top 5 best selling products 

Product Name            |Number of products|
-----------------------|------------------:|
Longos - Chicken Wings |             15,357|
Cream Of Tartar        |             15,303|
Wine - Redchard Merritt|             15,260|
Rambutan               |             15,259|
Beans - Kidney White   |             15,231|

#### 2. Top 5 products by revenue

Product Name               |Revenue by products|
--------------------------|------------------------|
Bread - Calabrese Baguette|             19,404,731.13|
Shrimp - 31/40            |             19,255,073.05|
Tia Maria                 |             19,231,712.99|
Puree - Passion Fruit     |             19,223,287.91|
Zucchini - Yellow         |             19,078,215.92|

#### 3. Top 3 best selling product categories

Category Name|Number of prducts|
------------|--------------------------|
Confections |                    851,979|
Meat        |                    747,762|
Poultry     |                    704,145|

## 👨‍💼 Employee analysis
#### 1. Average revenue per saleperson
Avg revenue per person |
------|
659.35|
#### 2. Average number of transactions per saleperson
Avg transactions per person |
------|
293,832|