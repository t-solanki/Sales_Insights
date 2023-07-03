-- Total number of customers-- 
SELECT count(*) FROM sales.customers;

-- Total number of Records-- 
SELECT count(*) FROM sales.transactions;

-- Transactions of Chennai-- 
SELECT * FROM sales.transactions where market_code = "Mark001";

-- Distinct product codes that were sold in chennai--  
SELECT DISTINCT count(product_code) FROM sales.transactions where market_code = "Mark001";

-- Transactions where currency is US dollars--
SELECT * FROM sales.transactions where currency = "USD";

-- Transactions in year 2020-- 
SELECT * FROM sales.transactions 
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020;

-- Total revenue in year 2020--
SELECT sum(sales.transactions.sales_amount) AS Revenue_2020 FROM sales.transactions 
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020;

-- Total revenue in year 2020, January Month--
SELECT sum(sales.transactions.sales_amount) AS Revenue_JAN2020 FROM sales.transactions 
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020 AND sales.date.month_name = "January"; 

-- Total revenue in year 2020, in Chennai--
SELECT sum(sales.transactions.sales_amount) AS Revenue_2020 FROM sales.transactions 
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020 AND sales.transactions.market_code = "Mark001"; 

-- Distinct products in year 2020, in Chennai--
SELECT distinct product_code FROM sales.transactions 
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020 AND sales.transactions.market_code = "Mark001"; 
 