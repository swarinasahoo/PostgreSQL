CREATE TABLE product_table(
	product_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	code VARCHAR(100) UNIQUE,
	price INT CHECK(price>=1),
	country VARCHAR(50) DEFAULT 'India'
);

--Insert sample data
INSERT INTO product_table(product_id,name,code,price,country)
VALUES
(101,'Laptop','LP1001',55000,'India'),
(102,'Smartphone','SP2001',25000,'India'),
(103,'Headphones','HP3001',3000,'India'),
(104,'Keyboard','KB4001',800,'India'),
(105,'Mouse','MS5001',500,'India');


SELECT * FROM product_table;