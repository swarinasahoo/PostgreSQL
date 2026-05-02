-- One-to-Many Relationship (1:M)

-- One row in Table A can be connected to multiple rows in Table B.

-- Real-life example:

-- One customer → many orders
-- One order → belongs to only one customer

-- Key idea:
-- No UNIQUE on foreign key
-- That’s what allows “many”

-- Table 1: customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Table 2: orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert Data
INSERT INTO customers VALUES
(1, 'Rahul'),
(2, 'Sneha'),
(3, 'Amit');

INSERT INTO orders VALUES
(101, 1, 500),
(102, 1, 700),
(103, 2, 300),
(104, 1, 200),
(105, 3, 1000);

-- TASKS 
-- Show all customers with their orders.
SELECT c.name, o.order_id, o.amount 
FROM customers c JOIN orders o 
ON c.customer_id = o.customer_id;

-- Find all orders of 'Rahul'.
SELECT o.* FROM orders o JOIN customers c 
ON c.customer_id = o.customer_id WHERE c.name = 'Rahul';

-- Count total orders per customer.
SELECT c.name, COUNT(o.order_id) AS Total_orders 
FROM customers c JOIN orders o 
ON c.customer_id = o.customer_id GROUP BY c.name;


-- Find total amount spent by each customer.
SELECT c.name, SUM(o.amount) AS total_spent 
FROM customers c JOIN orders o 
ON c.customer_id = o.customer_id GROUP BY c.name;

-- Find customers who placed more than 1 order.
SELECT c.name 
FROM customers c JOIN orders o
ON c.customer_id = o.customer_id 
GROUP BY c.name HAVING COUNT(o.order_id) > 1;



















