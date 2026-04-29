CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    restaurant VARCHAR(50),
    city VARCHAR(50),
    order_amount DECIMAL(10,2),
    delivery_fee DECIMAL(10,2),
    rating DECIMAL(2,1),
    order_date DATE
);

INSERT INTO orders (customer_name, restaurant, city, order_amount, delivery_fee, rating, order_date) VALUES
('Amit', 'Dominos', 'Hyderabad', 450, 40, 4.5, '2024-01-05'),
('Riya', 'KFC', 'Delhi', 600, 50, 4.2, '2024-01-06'),
('Karan', 'Burger King', 'Mumbai', 350, 30, 4.0, '2024-01-07'),
('Sneha', 'Pizza Hut', 'Bangalore', 800, 60, 4.8, '2024-01-08'),
('Rahul', 'Subway', 'Chennai', 300, 25, 3.9, '2024-01-09'),
('Pooja', 'Dominos', 'Hyderabad', 700, 50, 4.6, '2024-01-10'),
('Ankit', 'KFC', 'Delhi', 550, 45, 4.1, '2024-01-11'),
('Neha', 'Burger King', 'Mumbai', 400, 35, 4.3, '2024-01-12'),
('Vikas', 'Pizza Hut', 'Bangalore', 900, 70, 4.7, '2024-01-13'),
('Meena', 'Subway', 'Chennai', 250, 20, 3.8, '2024-01-14'),
('Rohit', 'Dominos', 'Hyderabad', 650, 55, 4.4, '2024-01-15'),
('Simran', 'KFC', 'Delhi', 720, 60, 4.5, '2024-01-16'),
('Arjun', 'Burger King', 'Mumbai', 380, 30, 4.1, '2024-01-17'),
('Priya', 'Pizza Hut', 'Bangalore', 820, 65, 4.9, '2024-01-18'),
('Deepak', 'Subway', 'Chennai', 290, 25, 3.7, '2024-01-19'),
('Nisha', 'Dominos', 'Hyderabad', 480, 40, 4.2, '2024-01-20'),
('Manish', 'KFC', 'Delhi', 610, 50, 4.3, '2024-01-21'),
('Kavita', 'Burger King', 'Mumbai', 420, 35, 4.0, '2024-01-22'),
('Suresh', 'Pizza Hut', 'Bangalore', 950, 75, 4.8, '2024-01-23'),
('Alok', 'Subway', 'Chennai', 270, 20, 3.6, '2024-01-24'),
('Divya', 'Dominos', 'Hyderabad', 520, 45, 4.5, '2024-01-25'),
('Tarun', 'KFC', 'Delhi', 680, 55, 4.4, '2024-01-26'),
('Pankaj', 'Burger King', 'Mumbai', 360, 30, 3.9, '2024-01-27'),
('Shreya', 'Pizza Hut', 'Bangalore', 870, 70, 4.7, '2024-01-28'),
('Gaurav', 'Subway', 'Chennai', 310, 25, 3.8, '2024-01-29'),
('Anu', 'Dominos', 'Hyderabad', 590, 50, 4.6, '2024-01-30'),
('Vivek', 'KFC', 'Delhi', 640, 55, 4.2, '2024-01-31'),
('Rashmi', 'Burger King', 'Mumbai', 410, 35, 4.1, '2024-02-01'),
('Kiran', 'Pizza Hut', 'Bangalore', 910, 75, 4.9, '2024-02-02'),
('Ajay', 'Subway', 'Chennai', 280, 20, 3.7, '2024-02-03');

--Total number of Orders
SELECT COUNT(*) AS total_Orders
FROM orders;

--Total order amount of all orders
SELECT SUM(order_amount) AS total_order_amount
FROM orders;

--Average order amount
SELECT ROUND(AVG(order_amount),2) AS avg_order_amount
FROM orders;

--Highest order amount
SELECT MAX(order_amount) AS highest_order
FROM orders;

--Lowest delivery fee
SELECT MIN(delivery_fee)
AS lowest_delivery_fee FROM orders;

--Total revenue(order_amount + delivery_fee)
SELECT SUM(order_amount + delivery_fee) AS total_revenue
FROM orders;

--Total number of orders per city
SELECT city,COUNT(*)
AS total_orders
FROM orders
GROUP BY city;

--Total order amount per restaurant
SELECT restaurant,SUM(order_amount) AS total_amount
FROM orders
GROUP BY restaurant;

--Average rating per restaurant
SELECT restaurant, ROUND(AVG(rating),2) AS avg_rating
FROM orders
GROUP BY restaurant;

--Maximum order amount per city
SELECT city,MAX(order_amount) AS max_order
FROM orders
GROUP BY city;

--Minimum rating per restaurant
SELECT restaurant,MIN(rating) AS min_rating
FROM orders
GROUP BY restaurant;

--Total revenue per city
SELECT city, SUM(order_amount + delivery_fee)
AS total_revenue
FROM orders
GROUP BY city;

--Restaurants having more than 3 orders
SELECT restaurant, COUNT(*) AS total_orders
FROM orders
GROUP BY restaurant
HAVING COUNT(*) > 3;

--Cities where average order amount > 600
SELECT city, AVG(order_amount) AS avg_order
FROM orders
GROUP BY city
HAVING AVG(order_amount) > 600;

--Count orders where rating is 5
SELECT COUNT(*) AS five_star_orders
FROM orders
WHERE rating = 5;




