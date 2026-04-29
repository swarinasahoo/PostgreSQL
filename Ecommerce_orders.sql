CREATE TABLE ecommerce_data(
	order_id INT PRIMARY KEY,
	customer_name VARCHAR(100),
	city VARCHAR(100),
	product_name VARCHAR(100),
	category VARCHAR(50),
	price DECIMAL(10,2),
	quantity INT,
	order_date DATE,
	payment_method VARCHAR(50)

);

SELECT * FROM ecommerce_data;

--Display all orders from Hyderabad
SELECT * FROM ecommerce_data
WHERE city = 'Hyderabad';

--Find total number of orders
SELECT COUNT(*) AS total_orders
FROM ecommerce_data;

--Show all products in Electronics Category
SELECT * FROM ecommerce_data
WHERE category = 'Electronics';

--Find total revenue (price * quantity)
SELECT SUM(price*quantity) AS total_revenue
FROM ecommerce_data;

--List Top 5 highest priced orders
SELECT * FROM ecommerce_data
ORDER BY price DESC
LIMIT 5;

--Count number of orders per city
SELECT city, COUNT(*) AS order_count
FROM ecommerce_data
GROUP BY city;

--Find total quantity sold per product
SELECT product_name , SUM(quantity) AS total_quantity
FROM ecommerce_data
GROUP BY product_name;

--Show average price of products by category
SELECT category , ROUND(AVG(price),2) AS avg_price
FROM ecommerce_data
GROUP BY category;

--Find maximum order value
SELECT MAX(price*quantity) AS max_order_value
FROM ecommerce_data;

--Find minimum order value
SELECT MIN(price*quantity) AS min_order_value
FROM ecommerce_data;

--Show total revenue by each city
SELECT city , SUM(price*quantity) AS total_revenue
FROM ecommerce_data
GROUP BY city;

--Find number of customers who used UPI
SELECT COUNT(*) AS upi_customers
FROM ecommerce_data
WHERE payment_method = 'UPI';

--Show products where price > 20000
SELECT * FROM ecommerce_data
WHERE price > 20000;

--Display orders sorted by date(latest first)
SELECT * FROM ecommerce_data
ORDER BY order_date DESC;

--find total sales for each payment method
SELECT payment_method , SUM(price*quantity) AS total_sales
FROM ecommerce_data
GROUP BY payment_method;

--Show customers who purchased more than 2 quantity
SELECT customer_name , SUM(quantity) AS total_quantity
FROM ecommerce_data
GROUP BY customer_name
HAVING SUM(quantity) > 2;

SELECT * 
FROM ecommerce_data
WHERE quantity > 2;


--Categorize orders as High value/ Low value
SELECT *,
CASE 
	WHEN price * quantity > 30000  THEN 'HIGH Value'
	ELSE 'LOW Value'
	END AS order_category
	FROM ecommerce_data;

--Find cities with more than 20 orders
SELECT city, COUNT(*) AS order_count
FROM ecommerce_data
GROUP BY city
HAVING COUNT(*) > 20;

--Extract first name from customer_name
SELECT customer_name,
SPLIT_PART(customer_name,' ',1) AS first_name
FROM ecommerce_data;

--Show total revenue for each category
SELECT category, SUM (price*quantity) AS total_revenue
FROM ecommerce_data
GROUP BY category;


	












