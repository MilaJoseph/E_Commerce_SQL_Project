INSERT INTO Customers
(customer_id, customer_name, age, gender, city, state, signup_date)
VALUES
(1, 'Aarav', 22, 'Male', 'Kochi', 'Kerala', '2025-01-15'),
(2, 'Ananya', 28, 'Female', 'Bengaluru', 'Karnataka', '2025-01-22'),
(3, 'Rahul', 35, 'Male', 'Mumbai', 'Maharashtra', '2025-02-10'),
(4, 'Diya', 19, 'Female', 'Chennai', 'Tamil Nadu', '2025-02-18'),
(5, 'Arjun', 42, 'Male', 'Hyderabad', 'Telangana', '2025-03-05'),
(6, 'Meera', 31, 'Female', 'Pune', 'Maharashtra', '2025-03-12'),
(7, 'Aditya', 26, 'Male', 'Kochi', 'Kerala', '2025-03-25'),
(8, 'Sneha', 38, 'Female', 'Delhi', 'Delhi', '2025-04-08'),
(9, 'Rohit', 17, 'Male', 'Bengaluru', 'Karnataka', '2025-04-20'),
(10, 'Kavya', 24, 'Female', 'Coimbatore', 'Tamil Nadu', '2025-05-03'),
(11, 'Vivek', 51, 'Male', 'Mumbai', 'Maharashtra', '2025-05-17'),
(12, 'Neha', 45, 'Female', 'Hyderabad', 'Telangana', '2025-06-01'),
(13, 'Kiran', 29, 'Male', 'Thiruvananthapuram', 'Kerala', '2025-06-14'),
(14, 'Priya', 33, 'Female', 'Mysuru', 'Karnataka', '2025-06-28'),
(15, 'Sanjay', 39, 'Male', 'Chennai', 'Tamil Nadu', '2025-07-10'),
(16, 'Isha', 21, 'Female', 'Pune', 'Maharashtra', '2025-07-22'),
(17, 'Nikhil', 16, 'Male', 'Kochi', 'Kerala', '2025-08-05'),
(18, 'Riya', 27, 'Female', 'Delhi', 'Delhi', '2025-08-19'),
(19, 'Manish', 47, 'Male', 'Hyderabad', 'Telangana', '2025-09-02'),
(20, 'Pooja', 36, 'Female', 'Mumbai', 'Maharashtra', '2025-09-15');

INSERT INTO Sellers
(seller_id, seller_name, city, state, seller_type)
VALUES
(101, 'TechWorld', 'Bengaluru', 'Karnataka', 'Brand'),
(102, 'KeralaKart', 'Kochi', 'Kerala', 'Small Business'),
(103, 'HomeNeeds', 'Mumbai', 'Maharashtra', 'Small Business'),
(104, 'StyleHub', 'Chennai', 'Tamil Nadu', 'Brand'),
(105, 'SmartMart', 'Hyderabad', 'Telangana', 'Manufacturer'),
(106, 'DailyDeals', 'Delhi', 'Delhi', 'Individual'),
(107, 'ElectroZone', 'Pune', 'Maharashtra', 'Manufacturer'),
(108, 'TrendyStore', 'Kochi', 'Kerala', 'Individual');

INSERT INTO Products
(product_id, product_name, category, price, seller_id)
VALUES
(201, 'Wireless Headphones', 'Electronics', 2499.00, 101),
(202, 'Bluetooth Speaker', 'Electronics', 1799.00, 107),
(203, 'Smart Watch', 'Electronics', 3499.00, 105),
(204, 'USB-C Charger', 'Electronics', 899.00, 101),
(205, 'Electric Kettle', 'Home & Kitchen', 1499.00, 103),
(206, 'Mixer Grinder', 'Home & Kitchen', 3299.00, 105),
(207, 'Non-Stick Pan', 'Home & Kitchen', 1199.00, 103),
(208, 'Water Bottle', 'Home & Kitchen', 599.00, 102),
(209, 'Casual T-Shirt', 'Clothing', 799.00, 104),
(210, 'Denim Jeans', 'Clothing', 1599.00, 108),
(211, 'Running Shoes', 'Clothing', 2299.00, 108),
(212, 'Cotton Shirt', 'Clothing', 999.00, 104),
(213, 'Face Wash', 'Beauty', 399.00, 106),
(214, 'Moisturizer', 'Beauty', 549.00, 106),
(215, 'Sunscreen', 'Beauty', 699.00, 102),
(216, 'Hair Dryer', 'Beauty', 1299.00, 107),
(217, 'Yoga Mat', 'Sports', 899.00, 102),
(218, 'Dumbbells Set', 'Sports', 1899.00, 107),
(219, 'Football', 'Sports', 799.00, 106),
(220, 'Cricket Bat', 'Sports', 2499.00, 108);

INSERT INTO Orders
(order_id, customer_id, order_date, order_status)
VALUES
(1001, 1, '2025-09-20', 'Delivered'),
(1002, 2, '2025-09-22', 'Delivered'),
(1003, 3, '2025-09-25', 'Shipped'),
(1004, 4, '2025-09-28', 'Delivered'),
(1005, 5, '2025-10-01', 'Processing'),
(1006, 6, '2025-10-03', 'Delivered'),
(1007, 7, '2025-10-05', 'Shipped'),
(1008, 8, '2025-10-08', 'Delivered'),
(1009, 9, '2025-10-10', 'Processing'),
(1010, 10, '2025-10-12', 'Delivered'),
(1011, 11, '2025-10-15', 'Shipped'),
(1012, 12, '2025-10-18', 'Delivered'),
(1013, 13, '2025-10-20', 'Processing'),
(1014, 14, '2025-10-22', 'Delivered'),
(1015, 15, '2025-10-25', 'Shipped'),
(1016, 16, '2025-10-27', 'Delivered'),
(1017, 17, '2025-10-29', 'Processing'),
(1018, 18, '2025-11-01', 'Delivered'),
(1019, 19, '2025-11-03', 'Shipped'),
(1020, 20, '2025-11-05', 'Delivered'),
(1021, 1, '2025-11-08', 'Delivered'),
(1022, 3, '2025-11-10', 'Shipped'),
(1023, 5, '2025-11-12', 'Delivered'),
(1024, 7, '2025-11-15', 'Processing'),
(1025, 10, '2025-11-18', 'Delivered'),
(1026, 12, '2025-11-20', 'Shipped'),
(1027, 15, '2025-11-22', 'Delivered'),
(1028, 18, '2025-11-25', 'Processing'),
(1029, 2, '2025-11-28', 'Delivered'),
(1030, 6, '2025-11-30', 'Shipped');

INSERT INTO Order_items
(order_item_id, order_id, product_id, quantity)
VALUES
(1, 1001, 201, 2),
(2, 1001, 208, 1),
(3, 1001, 215, 2),
(4, 1002, 203, 1),
(5, 1003, 206, 1),
(6, 1003, 218, 2),
(7, 1004, 204, 3),
(8, 1005, 202, 1),
(9, 1005, 210, 1),
(10, 1006, 205, 2),
(11, 1007, 201, 1),
(12, 1007, 211, 2),
(13, 1007, 213, 1),
(14, 1008, 215, 2),
(15, 1009, 219, 2),
(16, 1009, 208, 1),
(17, 1010, 206, 1),
(18, 1011, 218, 1),
(19, 1011, 220, 1),
(20, 1012, 214, 2),
(21, 1013, 201, 2),
(22, 1013, 216, 1),
(23, 1013, 217, 1),
(24, 1014, 209, 1),
(25, 1015, 202, 2),
(26, 1015, 211, 1),
(27, 1016, 207, 2),
(28, 1017, 204, 2),
(29, 1017, 219, 1),
(30, 1017, 213, 2),
(31, 1018, 203, 1),
(32, 1019, 210, 2),
(33, 1019, 220, 1),
(34, 1020, 218, 2),
(35, 1021, 201, 1),
(36, 1021, 208, 2),
(37, 1021, 215, 1),
(38, 1022, 206, 1),
(39, 1022, 212, 1),
(40, 1023, 203, 2),
(41, 1024, 217, 2),
(42, 1024, 219, 1),
(43, 1024, 214, 1),
(44, 1025, 209, 2),
(45, 1026, 202, 1),
(46, 1026, 216, 2),
(47, 1027, 207, 1),
(48, 1027, 220, 1),
(49, 1027, 213, 2),
(50, 1028, 201, 2),
(51, 1029, 205, 1),
(52, 1029, 213, 2),
(53, 1030, 203, 1),
(54, 1030, 218, 1);


INSERT INTO Payments
(payment_id, order_id, payment_date, payment_type, amount)
SELECT
    ROW_NUMBER() OVER (ORDER BY o.order_id) + 5000 AS payment_id,
    o.order_id,
    o.order_date AS payment_date,
    CASE
        WHEN o.order_id % 4 = 1 THEN 'UPI'
        WHEN o.order_id % 4 = 2 THEN 'Credit Card'
        WHEN o.order_id % 4 = 3 THEN 'Debit Card'
        ELSE 'Net Banking'
    END AS payment_type,
    SUM(p.price * oi.quantity) AS amount
FROM Orders o
JOIN Order_items oi
    ON o.order_id = oi.order_id
JOIN Products p
    ON oi.product_id = p.product_id
GROUP BY o.order_id, o.order_date;

