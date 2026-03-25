-- Retail Sales Analysis using SQL

-- 1. Total Sales
SELECT SUM(CAST("Sales" AS REAL)) AS total_sales
FROM sales_data;

-- 2. Sales by Region
SELECT "Region", SUM(CAST("Sales" AS REAL)) AS total_sales
FROM sales_data
GROUP BY "Region"
ORDER BY total_sales DESC;

-- 3. Sales by Category
SELECT "Category", SUM(CAST("Sales" AS REAL)) AS total_sales
FROM sales_data
GROUP BY "Category"
ORDER BY total_sales DESC;

-- 4. Top 10 Products
SELECT "Product Name", SUM(CAST("Sales" AS REAL)) AS total_sales
FROM sales_data
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;

-- 5. Top Customers
SELECT "Customer Name", SUM(CAST("Sales" AS REAL)) AS total_spent
FROM sales_data
GROUP BY "Customer Name"
ORDER BY total_spent DESC
LIMIT 10;

-- 6. Monthly Sales Trend
SELECT strftime('%Y-%m', "Order Date") AS month,
       SUM(CAST("Sales" AS REAL)) AS monthly_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- 7. Sales by State
SELECT "State", SUM(CAST("Sales" AS REAL)) AS total_sales
FROM sales_data
GROUP BY "State"
ORDER BY total_sales DESC
LIMIT 10;