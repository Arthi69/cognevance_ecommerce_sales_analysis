create database sales_projectdb;
use sales_projectdb;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100), 
    city VARCHAR(50),
    phone VARCHAR(15),
    gender VARCHAR(10),
    registration_date DATE 
);

CREATE TABLE products (
    product_id INT PRIMARY KEY, 
    product_name VARCHAR(100), 
    category VARCHAR(50),
    price DECIMAL(10,2), 
    stock_quantity INT 
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY, 
    customer_id INT, 
    product_id INT, 
    quantity INT, 
    order_date DATE, 
    total_amount DECIMAL(10,2),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

INSERT INTO customers
(customer_id, customer_name, city, phone, gender, registration_date)
VALUES
(1, 'Arun', 'Chennai', '9876500001', 'Male', '2026-01-10'),
(2, 'Priya', 'Madurai', '9876500002', 'Female', '2026-01-15'),
(3, 'Kumar', 'Coimbatore', '9876500003', 'Male', '2026-02-05'),
(4, 'Divya', 'Salem', '9876500004', 'Female', '2026-02-12'),
(5, 'Ravi', 'Chennai', '9876500005', 'Male', '2026-03-01'),
(6, 'Meena', 'Trichy', '9876500006', 'Female', '2026-03-10'),
(7, 'Ajay', 'Erode', '9876500007', 'Male', '2026-03-15'),
(8, 'Kavya', 'Madurai', '9876500008', 'Female', '2026-04-02'),
(9, 'Vijay', 'Chennai', '9876500009', 'Male', '2026-04-12'),
(10, 'Nisha', 'Salem', '9876500010', 'Female', '2026-04-20');

INSERT INTO products
(product_id, product_name, category, price, stock_quantity)
VALUES
(101, 'Laptop', 'Electronics', 45000.00, 10),
(102, 'Mobile', 'Electronics', 15000.00, 20),
(103, 'Shirt', 'Clothing', 800.00, 50),
(104, 'Shoes', 'Footwear', 2000.00, 30),
(105, 'Headphones', 'Electronics', 1500.00, 25),
(106, 'Watch', 'Accessories', 2500.00, 15),
(107, 'Jeans', 'Clothing', 1800.00, 40),
(108, 'Keyboard', 'Electronics', 1200.00, 18),
(109, 'Bag', 'Accessories', 900.00, 35),
(110, 'Tablet', 'Electronics', 22000.00, 12);


INSERT INTO orders
(order_id, customer_id, product_id, quantity, order_date, total_amount)
VALUES
(1001, 1, 101, 1, '2026-01-12', 45000.00),
(1002, 2, 103, 2, '2026-01-16', 1600.00),
(1003, 3, 102, 1, '2026-02-06', 15000.00),
(1004, 4, 104, 2, '2026-02-15', 4000.00),
(1005, 5, 105, 1, '2026-03-03', 1500.00),
(1006, 6, 106, 2, '2026-03-12', 5000.00),
(1007, 7, 107, 1, '2026-03-18', 1800.00),
(1008, 8, 108, 2, '2026-04-04', 2400.00),
(1009, 9, 109, 3, '2026-04-15', 2700.00),
(1010, 10, 110, 1, '2026-04-22', 22000.00);