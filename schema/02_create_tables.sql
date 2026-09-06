CREATE TABLE Customers(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL , 
    age INT NOT NULL, 
    gender VARCHAR(20) NOT NULL,
    city VARCHAR(50) NOT NULL ,
    state VARCHAR(50) NOT NULL,
    signup_date DATE NOT NULL ,
    CHECK (age BETWEEN 0 AND 120)
);

CREATE TABLE Sellers(
	seller_id INT PRIMARY KEY , 
    seller_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    seller_type VARCHAR(30) NOT NULL
);

CREATE TABLE Products(
	product_id INT PRIMARY KEY ,
    product_name VARCHAR(50) NOT NULL ,
    category VARCHAR(30) NOT NULL, 
    price DECIMAL(10,2) NOT NULL ,
    seller_id INT NOT NULL ,
    CHECK(price > 0) ,
	FOREIGN KEY (seller_id) REFERENCES Sellers(seller_id)
);

CREATE TABLE Orders(
	order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(20) NOT NULL ,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_items(
	order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    CHECK (quantity > 0) ,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Payments(
	payment_id 	INT PRIMARY KEY ,
    order_id INT NOT NULL UNIQUE,
    payment_date DATE NOT NULL,
    payment_type VARCHAR(20) NOT NULL ,
    amount DECIMAL(10,2) NOT NULL ,
    CHECK (amount > 0) ,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);