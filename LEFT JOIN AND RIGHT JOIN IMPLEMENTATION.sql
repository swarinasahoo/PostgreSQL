-- LEFT JOIN AND RIGHT JOIN IMPLEMENTATION TASK 

-- CREATE 2 SAMPLE TABLES AND INSERT SOME DATA 
-- TABLE 1 : customers 
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- TABLE 1 : INSERT DATA 
INSERT INTO customers VALUES
(1, 'Rahul', 'Hyderabad'),
(2, 'Sneha', 'Delhi'),
(3, 'Arjun', 'Mumbai'),
(4, 'Pooja', 'Chennai');

-- ----------------------------------
-- TABLE 2 : orders 
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

-- TABLE 2 : INSERT DATA 
INSERT INTO orders VALUES
(101, 1, 500),
(102, 2, 700),
(103, 1, 300),
(104, 5, 900); 

-- ----------------------------------------------------------
-- 			LEFT JOIN TASKS : Left table full, right optional
-- ----------------------------------------------------------

-- 1. Show all customers with their order amounts
SELECT c.name, o.amount
FROM customers c LEFT JOIN orders o 
ON c.customer_id = o.customer_id;

-- 2. Show customer names and order IDs
SELECT c.name, o.order_id 
FROM customers c LEFT JOIN orders o 
ON c.customer_id = o.customer_id;

-- 3. Show customers who have no orders
SELECT c.name 
FROM customers c LEFT JOIN orders o 
ON c.customer_id = o.customer_id WHERE o.order_id IS NULL;

-- 4. Show total number of orders per customer
SELECT c.name, COUNT(o.order_id) AS total_orders 
FROM customers c LEFT JOIN orders o 
ON c.customer_id = o.customer_id GROUP BY c.name;

-- 5. Show customers and their total order amount
SELECT c.name, SUM(o.amount) AS total_amount 
FROM customers c LEFT JOIN orders o 
ON c.customer_id = o.customer_id GROUP BY c.name;

-- 6. Show customers with orders greater than 500
SELECT c.name, o.amount 
FROM customers c LEFT JOIN orders o 
ON c.customer_id = o.customer_id WHERE o.amount >= 500;

-- 7. Show all customers even if order is NULL
SELECT * 
FROM customers c LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- 8. Show customer name and amount, replace NULL with 0
SELECT c.name, COALESCE(o.amount, 0) AS amount 
FROM customers c LEFT JOIN orders o 
ON c.customer_id = o.customer_id;

-- 9. Show only customers from Hyderabad with their orders
SELECT c.name, o.amount 
FROM customers c LEFT JOIN orders o 
ON c.customer_id = o.customer_id WHERE c.city = 'Hyderabad';

-- 10. Show customers who placed multiple orders
SELECT c.name, COUNT(o.order_id) AS total_orders 
FROM customers c LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name HAVING COUNT(o.order_id) > 1;


-- -----------------------------------------------------------
-- 			RIGHT JOIN TASKS : Right table full, left optional
-- -----------------------------------------------------------

-- 1. Show all orders with customer names
SELECT o.order_id, c.name 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;

-- 2. Show order IDs with customer cities
SELECT o.order_id, c.city 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id; 

-- 3. Show orders where customer details are missing
SELECT o.order_id 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id WHERE c.customer_id IS NULL;

-- 4. Show total orders count including unmatched customers
SELECT COUNT(*) AS total_orders 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;

-- 5. Show order amount and customer name
SELECT o.amount, c.name 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;

-- 6. Show orders greater than 500 with customer info
SELECT o.order_id, c.name, o.amount 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id 
WHERE o.amount > 500;

-- 7. Show all orders even if customer is NULL
SELECT * 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;


-- 8. Replace missing customer names with 'Unknown'
SELECT o.order_id, COALESCE(c.name, 'UNKNOWN') AS name 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;

-- 9. Show orders placed by customers from Delhi
SELECT o.order_id, c.name 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id 
WHERE c.city = 'Delhi';

-- 10. Show duplicate customer orders (same customer multiple orders)
SELECT c.name, COUNT(o.order_id) AS total_orders 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id 
GROUP BY c.name HAVING COUNT(o.order_id) > 1;














