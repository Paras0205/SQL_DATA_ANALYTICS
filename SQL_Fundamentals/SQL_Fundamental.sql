CREATE DATABASE customer;
USE customer;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(30),
    gender VARCHAR(10),
    age INT
);

INSERT INTO customers VALUES
(1,'Amit Sharma','amit@gmail.com','Delhi','Male',28),
(2,'Sneha Verma','sneha@gmail.com','Mumbai','Female',32),
(3,'Rahul Singh',NULL,'Delhi','Male',35),
(4,'Priya Mehta','priya@gmail.com','Ahmedabad','Female',26),
(5,'Ankit Jain','ankit@gmail.com','Jaipur','Male',41),
(6,'Neha Kapoor',NULL,'Mumbai','Female',29),
(7,'Rohit Kumar','rohit@gmail.com','Delhi','Male',24),
(8,'Simran Kaur','simran@gmail.com','Chandigarh','Female',31),
(9,'Vikas Yadav','vikas@gmail.com','Gurgaon','Male',38),
(10,'Pooja Mishra','pooja@gmail.com','Bhopal','Female',27),
(11,'Kunal Shah','kunal@gmail.com','Mumbai','Male',34),
(12,'Riya Gupta','riya@gmail.com','Delhi','Female',22),
(13,'Saurabh Patel',NULL,'Ahmedabad','Male',45),
(14,'Anjali Singh','anjali@gmail.com','Lucknow','Female',33),
(15,'Manish Verma','manish@gmail.com','Kanpur','Male',39),
(16,'Deepika Joshi','deepika@gmail.com','Jaipur','Female',25),
(17,'Nitin Agarwal',NULL,'Delhi','Male',29),
(18,'Shweta Nair','shweta@gmail.com','Kochi','Female',36),
(19,'Arjun Malhotra','arjun@gmail.com','Mumbai','Male',42),
(20,'Kriti Saxena','kriti@gmail.com','Indore','Female',28),
(21,'Mohit Bansal','mohit@gmail.com','Delhi','Male',31),
(22,'Payal Jain','payal@gmail.com','Udaipur','Female',26),
(23,'Yogesh Rana',NULL,'Noida','Male',37),
(24,'Ritu Sharma','ritu@gmail.com','Delhi','Female',34),
(25,'Abhishek Tiwari','abhishek@gmail.com','Prayagraj','Male',40),
(26,'Nisha Pandey','nisha@gmail.com','Varanasi','Female',23),
(27,'Gaurav Mishra',NULL,'Patna','Male',35),
(28,'Meenal Arora','meenal@gmail.com','Gurgaon','Female',30),
(29,'Sandeep Yadav','sandeep@gmail.com','Delhi','Male',44),
(30,'Ayesha Khan','ayesha@gmail.com','Mumbai','Female',27);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price INT
);

INSERT INTO products VALUES
(1,'iPhone 14','Electronics',70000),
(2,'Samsung Galaxy S22','Electronics',65000),
(3,'Dell Laptop','Electronics',55000),
(4,'HP Laptop','Electronics',52000),
(5,'Bluetooth Speaker','Electronics',3000),
(6,'Smart Watch','Electronics',5000),
(7,'Office Chair','Furniture',8000),
(8,'Study Table','Furniture',12000),
(9,'Sofa','Furniture',35000),
(10,'Dining Table','Furniture',40000),
(11,'Nike Shoes','Fashion',4500),
(12,'Adidas Shoes','Fashion',4200),
(13,'Jeans','Fashion',2000),
(14,'T-Shirt','Fashion',1200),
(15,'Jacket','Fashion',3500),
(16,'Mixer Grinder','Home Appliances',6000),
(17,'Microwave Oven','Home Appliances',15000),
(18,'Washing Machine','Home Appliances',28000),
(19,'Air Conditioner','Home Appliances',42000),
(20,'Vacuum Cleaner','Home Appliances',9000);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount INT,
    payment_mode VARCHAR(20)
);

INSERT INTO orders VALUES
(101,1,'2024-01-05',72000,'UPI'),
(102,2,'2024-01-07',65000,'Card'),
(103,3,'2024-01-10',52000,'NetBanking'),
(104,4,'2024-01-12',3000,'UPI'),
(105,5,'2024-01-15',8000,'Cash'),
(106,6,'2024-01-18',4500,'Card'),
(107,7,'2024-01-20',35000,'UPI'),
(108,8,'2024-01-22',12000,'Card'),
(109,9,'2024-01-25',42000,'UPI'),
(110,10,'2024-01-28',6000,'NetBanking'),
(111,11,'2024-02-02',15000,'UPI'),
(112,12,'2024-02-05',9000,'Card'),
(113,13,'2024-02-08',28000,'UPI'),
(114,14,'2024-02-10',5000,'Cash'),
(115,15,'2024-02-12',4200,'Card'),
(116,16,'2024-02-15',2000,'UPI'),
(117,17,'2024-02-18',3500,'NetBanking'),
(118,18,'2024-02-20',1200,'UPI'),
(119,19,'2024-02-22',40000,'Card'),
(120,20,'2024-02-25',72000,'UPI'),
(121,21,'2024-03-02',65000,'Card'),
(122,22,'2024-03-05',52000,'UPI'),
(123,23,'2024-03-08',3000,'Cash'),
(124,24,'2024-03-10',8000,'Card'),
(125,25,'2024-03-12',4500,'UPI'),
(126,26,'2024-03-15',35000,'NetBanking'),
(127,27,'2024-03-18',12000,'Card'),
(128,28,'2024-03-20',42000,'UPI'),
(129,29,'2024-03-22',6000,'UPI'),
(130,30,'2024-03-25',15000,'Card');

CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT
);

INSERT INTO order_details VALUES
(1,101,1,1),(2,101,5,1),
(3,102,2,1),(4,102,6,1),
(5,103,3,1),(6,104,5,1),
(7,105,7,1),(8,106,11,1),
(9,107,9,1),(10,108,8,1),
(11,109,19,1),(12,110,16,1),
(13,111,17,1),(14,112,20,1),
(15,113,18,1),(16,114,6,1),
(17,115,12,1),(18,116,13,1),
(19,117,15,1),(20,118,14,1),
(21,119,10,1),(22,120,1,1),
(23,121,2,1),(24,122,3,1),
(25,123,5,1),(26,124,7,1),
(27,125,11,1),(28,126,9,1),
(29,127,8,1),(30,128,19,1),
(31,129,16,1),(32,130,17,1);

-- LEVEL 1 – BASIC SELECT, DISTINCT, ORDER BY, LIMIT 
/*
Show all records from the customers table
Display all product names and prices
Show customer name, city, and age only
Display all orders
Show all products belonging to the Furniture category
*/

SELECT*FROM customers;

SELECT product_name,price
FROM products;

SELECT customer_name, city , age
FROM customers;

SELECT*FROM orders;

SELECT product_name,category
FROM products
WHERE category="Furniture";

/*Sorting & Limiting
Show top 5 most expensive products
Show bottom 5 cheapest products
Display latest 5 orders based on order date
Show customers sorted by age (youngest first)
Show customers sorted by age (oldest first)
*/

SELECT product_name,price
FROM products
ORDER BY price DESC
LIMIT 5;

SELECT product_name,price
FROM products
ORDER BY price ASC
LIMIT 5;

SELECT order_id,order_date
FROM orders
ORDER BY order_date DESC
LIMIT 5;

SELECT customer_name,age
FROM customers
ORDER BY age ASC;

SELECT customer_name,age
FROM customers
ORDER BY age DESC;

/*DISTINCT Usage
Show all unique cities from customers
Show unique payment modes used
Show unique product categories
Count how many unique cities exist
*/

SELECT DISTINCT city
FROM customers
ORDER BY city ASC;

SELECT DISTINCT payment_mode
FROM orders;

SELECT DISTINCT category
FROM products;

SELECT COUNT(DISTINCT(city)) AS city_count
FROM customers;

-- LEVEL 2 – FILTERING, CONDITIONS, CASE WHEN

/*Filtering Basics
Show customers from Delhi
Show customers from Mumbai
Show customers who are Female
Show orders with payment mode UPI
Show products priced above ₹30,000
*/

SELECT customer_name
FROM customers
WHERE city="Delhi"
ORDER BY customer_name ASC;

SELECT customer_name
FROM customers
WHERE city="Mumbai"
ORDER BY customer_name ASC;

SELECT customer_name
FROM customers
WHERE gender="Female"
ORDER BY customer_name ASC;

SELECT order_id
FROM orders
WHERE payment_mode="upi";

SELECT product_name
FROM products
WHERE price>30000;

/*Multiple Conditions
Show customers from Delhi AND age greater than 30
Show customers from Mumbai OR Delhi
Show products from Electronics category priced above ₹50,000
Show orders with amount greater than ₹10,000 and payment mode Card
*/

SELECT customer_name
FROM customers
WHERE city="Delhi" and age>30;

SELECT customer_name
FROM customers
WHERE city="Mumbai" or city= "Delhi";

SELECT product_name
FROM products
WHERE category="Electronics" and price>50000;

SELECT order_id
FROM orders
WHERE order_amount>10000 and payment_mode="Card";

/*IN, BETWEEN
Show customers from Delhi, Mumbai, or Jaipur
Show products priced between ₹5,000 and ₹15,000
Show orders placed between 2024-01-01 and 2024-01-31
Show customers whose age is between 25 and 35
*/

SELECT customer_name
FROM customers
WHERE city in ("DELHI","Mumbai","Jaipur");

SELECT product_name
FROM products
WHERE price between 5000 and 15000;

SELECT order_id
FROM orders
WHERE order_date between '2024-01-01' and '2024-01-31';

SELECT customer_name,age
FROM customers
WHERE age between 25 and 35
ORDER BY age DESC;

/*LIKE (Pattern Matching)
Show customers whose name starts with A
Show customers whose name ends with a
Show customers whose name contains sh
*/

SELECT customer_name
FROM customers
WHERE customer_name LIKE 'A%';

SELECT customer_name
FROM customers
WHERE customer_name LIKE '%A';

SELECT customer_name
FROM customers
WHERE customer_name LIKE '%sh%';

/*NULL Handling
Show customers whose email is NULL
Show customers whose email is NOT NULL
Count how many customers do not have email
*/

SELECT*
FROM customers
WHERE email is NULL;

SELECT customer_name
FROM customers
WHERE email is not NULL;

SELECT COUNT(customer_name) AS customer_no
FROM customers
WHERE email is NULL;

/*CASE WHEN - is used to apply conditional logic in SQL, just like if–else in programming.
Categorize customers by age:
Age < 25 → Young
Age 25–40 → Adult
Age > 40 → Senior

Categorize orders based on amount:
< 5,000 → Low Value
5,000–30,000 → Medium Value
30,000 → High Value

Create a column email_status:
NULL → “Not Available”
Otherwise → “Available”
*/

SELECT customer_name,age,
    CASE
        WHEN age < 25 THEN 'Young'
        WHEN age BETWEEN 25 AND 40 THEN 'Adult'
        ELSE 'Senior'
    END AS age_group
FROM customers
ORDER BY age ASC;

SELECT*FROM orders;

SELECT order_amount,
    CASE
        WHEN order_amount < 5000 THEN 'Low value'
        WHEN order_amount BETWEEN 5000 AND 30000 THEN 'Medium value'
        ELSE 'High value'
    END AS order_value
FROM orders
ORDER BY order_amount ASC;

SELECT customer_name,
    CASE
        WHEN email IS NULL THEN 'not available'
        ELSE 'available'
    END AS email_status
FROM customers
ORDER BY email_status ASC;

SELECT
  COUNT(CASE WHEN gender = 'Male' THEN 1 END) AS male_count,
  COUNT(CASE WHEN gender = 'Female' THEN 1 END) AS female_count
FROM customers;