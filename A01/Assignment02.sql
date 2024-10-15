CREATE DATABASE Assignment02
USE Assignment02
-- Customer Table
CREATE TABLE Customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(100),
    c_email VARCHAR(100),
    c_phone_number VARCHAR(15)
);

-- Customer Address Table
CREATE TABLE Customer_Address (
    a_id INT PRIMARY KEY,
    c_id INT,
    lines VARCHAR(255),
    city VARCHAR(100),
    zipcode VARCHAR(10),
    flag VARCHAR(10),
    FOREIGN KEY (c_id) REFERENCES Customer(c_id)
);

-- Seller Table
CREATE TABLE Seller (
    s_id INT PRIMARY KEY,
    s_name VARCHAR(100),
    s_email VARCHAR(100),
    s_phone_number VARCHAR(15),
    address VARCHAR(255)
);

-- Product Table
CREATE TABLE Product (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(100),
    p_category VARCHAR(50),
    p_description TEXT,
    s_id INT,
    p_price DECIMAL(10, 2),
    FOREIGN KEY (s_id) REFERENCES Seller(s_id)
);

-- Order Table
CREATE TABLE Orders (
    o_id INT PRIMARY KEY,
    c_id INT,
    o_number VARCHAR(50),
    total_amount DECIMAL(10, 2),
    o_creation_time TIMESTAMP,
    FOREIGN KEY (c_id) REFERENCES Customer(c_id)
);

-- Order Item Table
CREATE TABLE Order_Item (
    oi_id INT PRIMARY KEY,
    o_id INT,
    p_id INT,
    oi_quantity INT,
    oi_price DECIMAL(10, 2),
    FOREIGN KEY (o_id) REFERENCES Orders(o_id),
    FOREIGN KEY (p_id) REFERENCES Product(p_id)
);

-- Shopping Cart Table
CREATE TABLE Shopping_Cart (
    cart_id INT PRIMARY KEY,
    c_id INT,
    status VARCHAR(20),
    updated_time TIMESTAMP,
    FOREIGN KEY (c_id) REFERENCES Customer(c_id)
);

-- Cart Items Table
CREATE TABLE Cart_Items (
    cartitem_id INT PRIMARY KEY,
    cart_id INT,
    p_id INT,
    quantity INT,
    updated_time TIMESTAMP,
    FOREIGN KEY (cart_id) REFERENCES Shopping_Cart(cart_id),
    FOREIGN KEY (p_id) REFERENCES Product(p_id)
);

-- Payment Table
CREATE TABLE Payment (
    pay_id INT PRIMARY KEY,
    o_id INT,
    total_amount DECIMAL(10, 2),
    pay_methods VARCHAR(50),
    created_time TIMESTAMP,
    FOREIGN KEY (o_id) REFERENCES Orders(o_id)
);

-- Review Table
CREATE TABLE Review (
    r_id INT PRIMARY KEY,
    c_id INT,
    p_id INT,
    rating INT,
    text TEXT,
    FOREIGN KEY (c_id) REFERENCES Customer(c_id),
    FOREIGN KEY (p_id) REFERENCES Product(p_id)
);

-- Inventory Table
CREATE TABLE Inventory (
    inv_id INT PRIMARY KEY,
    p_id INT,
    quantity INT,
    unitcost DECIMAL(10, 2),
    last_updated TIMESTAMP,
    FOREIGN KEY (p_id) REFERENCES Product(p_id)
);

-- Inserting 20 rows of data into each table

-- Insert Customers
INSERT INTO Customer (c_id, c_name, c_email, c_phone_number)
VALUES
(1, 'Ali Khan', 'ali@example.com', '03001234567'),
(2, 'Sara Malik', 'sara@example.com', '03111234567'),
(3, 'John Doe', 'john@example.com', '03211234567'),
(4, 'Jane Smith', 'jane@example.com', '03331234567'),
(5, 'David Taylor', 'david@example.com', '03451234567'),
(6, 'Emily White', 'emily@example.com', '03561234567'),
(7, 'Sofia Patel', 'sofia@example.com', '03671234567'),
(8, 'Arjun Shah', 'arjun@example.com', '03781234567'),
(9, 'Ayesha Khan', 'ayesha@example.com', '03891234567'),
(10, 'Michael Brown', 'michael@example.com', '03901234567'),
(11, 'James Clark', 'james@example.com', '03011234567'),
(12, 'Rachel Green', 'rachel@example.com', '03121234567'),
(13, 'Mohammad Ali', 'mali@example.com', '03221234567'),
(14, 'Sana Ahmed', 'sana@example.com', '03341234567'),
(15, 'Bilal Sheikh', 'bilal@example.com', '03461234567'),
(16, 'Hina Farooq', 'hina@example.com', '03571234567'),
(17, 'Sameer Iqbal', 'sameer@example.com', '03681234567'),
(18, 'Natasha Ali', 'natasha@example.com', '03791234567'),
(19, 'Osman Qureshi', 'osman@example.com', '03801234567'),
(20, 'Maria Gill', 'maria@example.com', '03911234567');

-- Insert Customer Addresses
INSERT INTO Customer_Address (a_id, c_id, lines, city, zipcode, flag)
VALUES
(1, 1, '123 Main St', 'Karachi', '75000', 'billing'),
(2, 2, '456 Elm St', 'Lahore', '54000', 'shipping'),
(3, 3, '789 Oak St', 'Islamabad', '44000', 'billing'),
(4, 4, '101 Pine St', 'Faisalabad', '38000', 'shipping'),
(5, 5, '202 Maple St', 'Peshawar', '25000', 'billing'),
(6, 6, '303 Cedar St', 'Quetta', '87000', 'shipping'),
(7, 7, '404 Walnut St', 'Rawalpindi', '46000', 'billing'),
(8, 8, '505 Birch St', 'Multan', '60000', 'shipping'),
(9, 9, '606 Spruce St', 'Sialkot', '51000', 'billing'),
(10, 10, '707 Willow St', 'Hyderabad', '71000', 'shipping'),
(11, 11, '808 Chestnut St', 'Gujranwala', '52000', 'billing'),
(12, 12, '909 Redwood St', 'Sargodha', '40100', 'shipping'),
(13, 13, '1010 Hickory St', 'Bahawalpur', '63100', 'billing'),
(14, 14, '1111 Fir St', 'Sukkur', '65200', 'shipping'),
(15, 15, '1212 Magnolia St', 'Jhelum', '49600', 'billing'),
(16, 16, '1313 Cypress St', 'Abbottabad', '22010', 'shipping'),
(17, 17, '1414 Aspen St', 'Wah Cantt', '47040', 'billing'),
(18, 18, '1515 Poplar St', 'Gilgit', '15100', 'shipping'),
(19, 19, '1616 Pine St', 'Muzaffarabad', '13100', 'billing'),
(20, 20, '1717 Cedar St', 'Mardan', '23200', 'shipping');

-- Insert Sellers
INSERT INTO Seller (s_id, s_name, s_email, s_phone_number, address)
VALUES
(1, 'TechStore', 'techstore@example.com', '03451234567', '123 Street, Karachi'),
(2, 'MobileWorld', 'mobileworld@example.com', '03561234567', '456 Avenue, Lahore'),
(3, 'GadgetZone', 'gadgetzone@example.com', '03671234567', '789 Boulevard, Islamabad'),
(4, 'FashionHub', 'fashionhub@example.com', '03781234567', '321 Avenue, Peshawar'),
(5, 'HomeEssentials', 'homeessentials@example.com', '03891234567', '654 Street, Quetta'),
(6, 'ElectroMart', 'electromart@example.com', '03901234567', '987 Boulevard, Faisalabad'),
(7, 'ClothingPlus', 'clothingplus@example.com', '03011234567', '543 Avenue, Lahore'),
(8, 'KitchenWare', 'kitchenware@example.com', '03121234567', '321 Street, Multan'),
(9, 'ShoeMart', 'shoemart@example.com', '03221234567', '876 Street, Karachi'),
(10, 'BookStore', 'bookstore@example.com', '03331234567', '567 Avenue, Hyderabad'),
(11, 'ApplianceShop', 'applianceshop@example.com', '03441234567', '765 Boulevard, Islamabad'),
(12, 'GroceryMart', 'grocerymart@example.com', '03551234567', '908 Avenue, Rawalpindi'),
(13, 'TechSavvy', 'techsavvy@example.com', '03661234567', '213 Street, Sialkot'),
(14, 'MobileHub', 'mobilehub@example.com', '03771234567', '324 Boulevard, Lahore'),
(15, 'SmartElectronics', 'smartelectronics@example.com', '03881234567', '431 Avenue, Faisalabad'),
(16, 'FashionMart', 'fashionmart@example.com', '03991234567', '981 Street, Quetta'),
(17, 'HomeDecors', 'homedecors@example.com', '031011234567', '100 Street, Multan'),
(18, 'BeautyShop', 'beautyshop@example.com', '032011234567', '251 Avenue, Karachi'),
(19, 'SportsMart', 'sportsmart@example.com', '033011234567', '362 Street, Lahore'),
(20, 'ToyLand', 'toyland@example.com', '034011234567', '124 Avenue, Islamabad');

INSERT INTO Product (p_id, p_name, p_category, p_description, s_id, p_price)
VALUES
(1, 'Laptop', 'Electronics', 'High performance laptop', 1, 799.99),
(2, 'Smartphone', 'Electronics', 'Latest smartphone with 5G', 1, 699.99),
(3, 'Headphones', 'Accessories', 'Noise-cancelling headphones', 2, 199.99),
(4, 'Smartwatch', 'Wearables', 'Fitness tracking smartwatch', 2, 149.99),
(5, 'Bluetooth Speaker', 'Accessories', 'Portable Bluetooth speaker', 3, 59.99),
(6, 'Gaming Console', 'Electronics', 'Next-gen gaming console', 4, 499.99),
(7, 'Tablet', 'Electronics', '10-inch screen tablet', 4, 399.99),
(8, 'Wireless Mouse', 'Accessories', 'Ergonomic wireless mouse', 5, 29.99),
(9, 'Keyboard', 'Accessories', 'Mechanical keyboard', 5, 89.99),
(10, 'Monitor', 'Electronics', '27-inch 4K monitor', 6, 329.99),
(11, 'Camera', 'Electronics', 'DSLR camera with lens', 6, 999.99),
(12, 'External Hard Drive', 'Accessories', '1TB external hard drive', 7, 79.99),
(13, 'Office Chair', 'Furniture', 'Ergonomic office chair', 8, 129.99),
(14, 'Desk Lamp', 'Home Accessories', 'LED desk lamp with adjustable brightness', 8, 39.99),
(15, 'Fitness Tracker', 'Wearables', 'Activity and sleep tracking fitness band', 9, 89.99),
(16, 'Water Bottle', 'Accessories', 'Stainless steel insulated water bottle', 9, 24.99),
(17, 'Running Shoes', 'Footwear', 'Lightweight running shoes', 10, 79.99),
(18, 'Backpack', 'Accessories', 'Waterproof travel backpack', 10, 59.99),
(19, 'Sunglasses', 'Accessories', 'Polarized UV protection sunglasses', 11, 49.99),
(20, 'T-shirt', 'Clothing', 'Cotton crewneck t-shirt', 11, 19.99);


ALTER TABLE Orders
ADD o_creation_time_new DATETIME;


--making correction into the table
ALTER TABLE Orders
DROP COLUMN o_creation_time;
EXEC sp_rename 'Orders.o_creation_time_new', 'o_creation_time', 'COLUMN';


INSERT INTO Orders (o_id, c_id, o_number, total_amount)
VALUES
(1, 1, 'ORD001', 1199.99),
(2, 2, 'ORD002', 849.99),
(3, 3, 'ORD003', 699.99),
(4, 4, 'ORD004', 399.99),
(5, 5, 'ORD005', 329.99),
(6, 6, 'ORD006', 999.99),
(7, 7, 'ORD007', 79.99),
(8, 8, 'ORD008', 29.99),
(9, 9, 'ORD009', 149.99),
(10, 10, 'ORD010', 59.99),
(11, 11, 'ORD011', 49.99),
(12, 1, 'ORD012', 329.99),
(13, 2, 'ORD013', 999.99),
(14, 3, 'ORD014', 79.99),
(15, 4, 'ORD015', 89.99),
(16, 5, 'ORD016', 59.99),
(17, 6, 'ORD017', 79.99),
(18, 7, 'ORD018', 999.99),
(19, 8, 'ORD019', 849.99),
(20, 9, 'ORD020', 29.99);

UPDATE Orders
SET o_creation_time = '2024-10-15 09:15:00'
WHERE o_id = 1;

UPDATE Orders
SET o_creation_time = '2024-10-15 10:30:00'
WHERE o_id = 2;

UPDATE Orders
SET o_creation_time = '2024-10-15 11:45:00'
WHERE o_id = 3;

UPDATE Orders
SET o_creation_time = '2024-10-15 12:00:00'
WHERE o_id = 4;

UPDATE Orders
SET o_creation_time = '2024-10-15 13:10:00'
WHERE o_id = 5;

UPDATE Orders
SET o_creation_time = '2024-10-15 14:20:00'
WHERE o_id = 6;

UPDATE Orders
SET o_creation_time = '2024-10-15 15:30:00'
WHERE o_id = 7;

UPDATE Orders
SET o_creation_time = '2024-10-15 16:00:00'
WHERE o_id = 8;

UPDATE Orders
SET o_creation_time = '2024-10-15 17:15:00'
WHERE o_id = 9;

UPDATE Orders
SET o_creation_time = '2024-10-15 18:25:00'
WHERE o_id = 10;

UPDATE Orders
SET o_creation_time = '2024-10-15 19:30:00'
WHERE o_id = 11;

UPDATE Orders
SET o_creation_time = '2024-10-15 20:40:00'
WHERE o_id = 12;

UPDATE Orders
SET o_creation_time = '2024-10-15 21:50:00'
WHERE o_id = 13;

UPDATE Orders
SET o_creation_time = '2024-10-15 22:05:00'
WHERE o_id = 14;

UPDATE Orders
SET o_creation_time = '2024-10-15 22:30:00'
WHERE o_id = 15;

UPDATE Orders
SET o_creation_time = '2024-10-15 23:15:00'
WHERE o_id = 16;

UPDATE Orders
SET o_creation_time = '2024-10-16 00:10:00'
WHERE o_id = 17;

UPDATE Orders
SET o_creation_time = '2024-10-16 01:25:00'
WHERE o_id = 18;

UPDATE Orders
SET o_creation_time = '2024-10-16 02:15:00'
WHERE o_id = 19;

UPDATE Orders
SET o_creation_time = '2024-10-16 03:30:00'
WHERE o_id = 20;




INSERT INTO Order_Item (oi_id, o_id, p_id, oi_quantity, oi_price)
VALUES
(1, 1, 1, 1, 799.99),
(2, 1, 3, 2, 199.99),
(3, 2, 4, 1, 149.99),
(4, 3, 2, 1, 699.99),
(5, 4, 7, 1, 399.99),
(6, 5, 10, 1, 329.99),
(7, 6, 11, 1, 999.99),
(8, 7, 16, 2, 39.99),
(9, 8, 8, 1, 29.99),
(10, 9, 15, 1, 89.99),
(11, 10, 14, 1, 39.99),
(12, 11, 19, 1, 49.99),
(13, 12, 10, 1, 329.99),
(14, 13, 11, 1, 999.99),
(15, 14, 17, 1, 79.99),
(16, 15, 9, 1, 89.99),
(17, 16, 18, 1, 59.99),
(18, 17, 16, 2, 39.99),
(19, 18, 6, 1, 999.99),
(20, 19, 2, 1, 699.99);

INSERT INTO Shopping_Cart (cart_id, c_id, status)
VALUES
(1, 1, 'active'),
(2, 2, 'active'),
(3, 3, 'active'),
(4, 4, 'active'),
(5, 5, 'active'),
(6, 6, 'active'),
(7, 7, 'active'),
(8, 8, 'active'),
(9, 9, 'active'),
(10, 10, 'active'),
(11, 11, 'active'),
(12, 1, 'inactive'),
(13, 2, 'active'),
(14, 3, 'active'),
(15, 4, 'inactive'),
(16, 5, 'active'),
(17, 6, 'inactive'),
(18, 7, 'active'),
(19, 8, 'active'),
(20, 9, 'active');

INSERT INTO Cart_Items (cartitem_id, cart_id, p_id, quantity)
VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 3, 4),
(4, 3, 4, 1),
(5, 4, 5, 3),
(6, 5, 6, 2),
(7, 6, 7, 5),
(8, 7, 8, 1),
(9, 8, 9, 2),
(10, 9, 10, 1),
(11, 10, 11, 4),
(12, 11, 1, 1),
(13, 12, 2, 3),
(14, 13, 3, 1),
(15, 14, 4, 2),
(16, 15, 5, 1),
(17, 16, 6, 5),
(18, 17, 7, 1),
(19, 18, 8, 3),
(20, 19, 9, 2);

INSERT INTO Payment (pay_id, o_id, total_amount, pay_methods)
VALUES
(1, 1, 1199.99, 'Credit Card'),
(2, 2, 849.99, 'Debit Card'),
(3, 3, 699.99, 'PayPal'),
(4, 4, 399.99, 'Bank Transfer'),
(5, 5, 329.99, 'Credit Card'),
(6, 6, 999.99, 'Debit Card'),
(7, 7, 79.99, 'Credit Card'),
(8, 8, 29.99, 'PayPal'),
(9, 9, 149.99, 'Bank Transfer'),
(10, 10, 59.99, 'Debit Card'),
(11, 11, 49.99, 'Credit Card'),
(12, 12, 329.99, 'PayPal'),
(13, 13, 999.99, 'Bank Transfer'),
(14, 14, 79.99, 'Credit Card'),
(15, 15, 89.99, 'Debit Card'),
(16, 16, 59.99, 'PayPal'),
(17, 17, 79.99, 'Credit Card'),
(18, 18, 999.99, 'Bank Transfer'),
(19, 19, 849.99, 'Debit Card'),
(20, 20, 29.99, 'PayPal');

INSERT INTO Review (r_id, c_id, p_id, rating, text)
VALUES
(1, 1, 1, 5, 'Excellent product! Highly recommend.'),
(2, 2, 2, 4, 'Very good quality, but a bit expensive.'),
(3, 3, 3, 3, 'Average experience, product was okay.'),
(4, 4, 4, 5, 'Absolutely love this item!'),
(5, 5, 5, 2, 'Did not meet my expectations.'),
(6, 6, 6, 4, 'Good value for the price.'),
(7, 7, 7, 3, 'It was decent, nothing special.'),
(8, 8, 8, 5, 'Best purchase I made this year!'),
(9, 9, 9, 4, 'Satisfactory product and service.'),
(10, 10, 10, 5, 'Highly recommend! Will buy again.'),
(11, 11, 11, 3, 'Okay product, but delivery was slow.'),
(12, 1, 1, 5, 'Perfect fit and fast shipping.'),
(13, 2, 2, 4, 'Great item, minor issues with packaging.'),
(14, 3, 3, 2, 'Not as described, very disappointed.'),
(15, 4, 4, 4, 'Good quality, will recommend to friends.'),
(16, 5, 5, 5, 'Exceeded my expectations, fantastic!'),
(17, 6, 6, 3, 'Just okay, nothing too impressive.'),
(18, 7, 7, 5, 'Love this, using it every day!'),
(19, 8, 8, 4, 'Pretty good for the price.'),
(20, 9, 9, 5, 'Fantastic quality, very happy!');

INSERT INTO Inventory (inv_id, p_id, quantity, unitcost)
VALUES
(1, 1, 50, 599.99),
(2, 2, 75, 299.99),
(3, 3, 30, 399.99),
(4, 4, 100, 499.99),
(5, 5, 20, 150.00),
(6, 6, 60, 799.99),
(7, 7, 45, 39.99),
(8, 8, 80, 19.99),
(9, 9, 35, 79.99),
(10, 10, 90, 29.99),
(11, 11, 25, 49.99),
(12, 1, 55, 599.99),
(13, 2, 70, 299.99),
(14, 3, 20, 399.99),
(15, 4, 110, 499.99),
(16, 5, 15, 150.00),
(17, 6, 65, 799.99),
(18, 7, 50, 39.99),
(19, 8, 85, 19.99),
(20, 9, 40, 79.99);

--Question # 03 for queries and their importance
-- This query retrieves all customer information from the Customer table.
SELECT c_id, c_name, c_email, c_phone_number
FROM Customer;

-- This query calculates the total sales amount for each product.
SELECT p.p_name, SUM(oi.oi_price * oi.oi_quantity) AS total_sales
FROM Product p
JOIN Order_Item oi ON p.p_id = oi.p_id
GROUP BY p.p_name;

-- This query retrieves all active shopping carts along with the customer's name.
SELECT sc.cart_id, c.c_name, sc.status
FROM Shopping_Cart sc
JOIN Customer c ON sc.c_id = c.c_id
WHERE sc.status = 'active';

-- This query retrieves the payment history of customers, including payment methods and total amounts.
SELECT c.c_name, p.total_amount, p.pay_methods, p.created_time
FROM Payment p
JOIN Orders o ON p.o_id = o.o_id
JOIN Customer c ON o.c_id = c.c_id
ORDER BY p.created_time DESC;

--Q # 04 This query retrieves the top 5 customers who have spent the most money.
SELECT TOP 5
    c.c_id,
    c.c_name,
    SUM(p.total_amount) AS total_spent
FROM 
    Customer c
JOIN 
    Orders o ON c.c_id = o.c_id
JOIN 
    Payment p ON o.o_id = p.o_id
GROUP BY 
    c.c_id, c.c_name
ORDER BY 
    total_spent DESC;

--Question # 05 
-- This query retrieves products along with their average ratings, ordered by the highest rating.
SELECT 
    p.p_id,
    p.p_name,
    p.p_category,
    AVG(r.rating) AS average_rating
FROM 
    Product p
JOIN 
    Review r ON p.p_id = r.p_id
GROUP BY 
    p.p_id, p.p_name, p.p_category
ORDER BY 
    average_rating DESC;


EXEC sp_rename 'Orders.o_creation_time_new', 'o_creation_time', 'COLUMN';

--Question # 06
-- This query retrieves customers who made more than one purchase on the same day.
SELECT c.c_id, c.c_name, COUNT(*) AS purchases, 
       CONVERT(DATE, o.o_creation_time) AS purchase_date
FROM Customer c
JOIN Orders o ON c.c_id = o.c_id
GROUP BY c.c_id, c.c_name, CONVERT(DATE, o.o_creation_time)
HAVING COUNT(*) > 1;

--Question # 07
-- This query calculates the total revenue generated for each product category.
SELECT 
    p.p_category,
    SUM(oi.oi_quantity * oi.oi_price) AS total_revenue
FROM 
    Product p
JOIN 
    Order_Item oi ON p.p_id = oi.p_id  -- Join Product with Order_Item to link products with their order items
JOIN 
    Orders o ON oi.o_id = o.o_id       -- Join Order_Item with Orders to include only completed orders
GROUP BY 
    p.p_category                          -- Group results by product category
ORDER BY 
    total_revenue DESC;                  -- Order the results by total revenue in descending order

--Question # 08
-- This query lists customers who have not left any reviews for products.
SELECT 
    c.c_id,
    c.c_name,
    c.c_email,
    c.c_phone_number
FROM 
    Customer c
LEFT JOIN 
    Review r ON c.c_id = r.c_id  -- Join Customer with Review on customer ID
WHERE 
    r.r_id IS NULL;                -- Filter to include only customers with no reviews

--Question # 09
-- This query retrieves products that have quantities below the average quantity in stock.
SELECT 
    p.p_id,
    p.p_name,
    p.p_category,
    i.quantity
FROM 
    Product p
JOIN 
    Inventory i ON p.p_id = i.p_id  -- Join Product with Inventory on product ID
WHERE 
    i.quantity < (SELECT AVG(quantity) FROM Inventory);  -- Filter for quantities below average

--Question # 10
-- This query retrieves customers who have made more than 5 orders, along with the total number of their orders.
SELECT 
    c.c_id,
    c.c_name,
    COUNT(o.o_id) AS total_orders
FROM 
    Customer c
LEFT JOIN 
    Orders o ON c.c_id = o.c_id  -- Left join to include customers with zero orders
GROUP BY 
    c.c_id, c.c_name  -- Group by customer ID and name
HAVING 
    COUNT(o.o_id) > 5;  -- Filter to show only customers with more than 5 orders

--Question # 11
-- This query retrieves the 3 most recent orders for a specific customer.
SELECT TOP 3
    o.o_id,
    o.o_number,
    o.total_amount,
    o.o_creation_time
FROM 
    Orders o
WHERE 
    o.c_id = 3  
ORDER BY 
    o.o_creation_time DESC;  


--Question # 12
-- This query lists customers who have purchased products from at least two different sellers.
SELECT 
    c.c_id,
    c.c_name,
    COUNT(DISTINCT p.s_id) AS seller_count
FROM 
    Customer c
JOIN 
    Orders o ON c.c_id = o.c_id
JOIN 
    Order_Item oi ON o.o_id = oi.o_id
JOIN 
    Product p ON oi.p_id = p.p_id
GROUP BY 
    c.c_id, c.c_name
HAVING 
    COUNT(DISTINCT p.s_id) >= 2;  -- Filter customers with products from at least two different sellers

--Question 13
-- This query finds customers who have placed an order in the last 30 days.
SELECT 
    DISTINCT c.c_id,
    c.c_name,
    o.o_creation_time
FROM 
    Customer c
JOIN 
    Orders o ON c.c_id = o.c_id
WHERE 
    o.o_creation_time >= DATEADD(DAY, -30, GETDATE());  

--Question 14
-- This query lists customers who have made a purchase in every product category.
SELECT 
    c.c_id,
    c.c_name
FROM 
    Customer c
JOIN 
    Orders o ON c.c_id = o.c_id
JOIN 
    Order_Item oi ON o.o_id = oi.o_id
JOIN 
    Product p ON oi.p_id = p.p_id
GROUP BY 
    c.c_id, c.c_name
HAVING 
    COUNT(DISTINCT p.p_category) = (SELECT COUNT(DISTINCT p_category) FROM Product);  

--Question # 15
-- This query calculates the total number of products sold by each seller.
SELECT 
    s.s_id,
    s.s_name,
    SUM(oi.oi_quantity) AS total_products_sold
FROM 
    Seller s
JOIN 
    Product p ON s.s_id = p.s_id
JOIN 
    Order_Item oi ON p.p_id = oi.p_id
GROUP BY 
    s.s_id, s.s_name;
	
--Question # 16
-- This query retrieves the top 5 products with the highest sales in the last month.
WITH ProductSales AS (
    SELECT 
        p.p_id,
        p.p_name,
        SUM(oi.oi_quantity) AS total_sold,
        ROW_NUMBER() OVER (ORDER BY SUM(oi.oi_quantity) DESC) AS rank
    FROM 
        Product p
    JOIN 
        Order_Item oi ON p.p_id = oi.p_id
    JOIN 
        Orders o ON oi.o_id = o.o_id
    WHERE 
        o.o_creation_time >= DATEADD(MONTH, -1, GETDATE())  
    GROUP BY 
        p.p_id, p.p_name
)
SELECT 
    p.p_id,
    p.p_name,
    p.total_sold
FROM 
    ProductSales p
WHERE 
    p.rank <= 5;  

--Question # 17
-- This query retrieves the latest 5 orders along with customer details and order items.
SELECT 
    o.o_id,
    c.c_id,
    c.c_name,
    oi.oi_id,
    p.p_name,
    oi.oi_quantity,
    oi.oi_price,
    o.o_creation_time
FROM 
    Orders o
JOIN 
    Customer c ON o.c_id = c.c_id
JOIN 
    Order_Item oi ON o.o_id = oi.o_id
JOIN 
    Product p ON oi.p_id = p.p_id
WHERE 
    o.o_id IN (SELECT TOP 5 o_id FROM Orders ORDER BY o_creation_time DESC);  -- Fetch latest 5 orders

--Question # 18
-- This query retrieves customers who have made purchases in every product category, along with the total number of categories they have purchased from.
SELECT 
    c.c_id,
    c.c_name,
    COUNT(DISTINCT p.p_category) AS total_categories
FROM 
    Customer c
JOIN 
    Orders o ON c.c_id = o.c_id
JOIN 
    Order_Item oi ON o.o_id = oi.o_id
JOIN 
    Product p ON oi.p_id = p.p_id
GROUP BY 
    c.c_id, c.c_name
HAVING 
    COUNT(DISTINCT p.p_category) = (SELECT COUNT(DISTINCT p_category) FROM Product);

--Question # 19
-- This query lists products that have never been reviewed and have quantities in stock greater than zero, along with the average rating for their category.
SELECT 
    p.p_id,
    p.p_name,
    p.p_category,
    p.p_price,
    COALESCE(AVG(r.rating), 0) AS avg_rating
FROM 
    Product p
LEFT JOIN 
    Review r ON p.p_id = r.p_id
JOIN 
    Inventory i ON p.p_id = i.p_id
WHERE 
    i.quantity > 0 
    AND r.p_id IS NULL  -- Ensures that the product has never been reviewed
GROUP BY 
    p.p_id, p.p_name, p.p_category, p.p_price
HAVING 
    COUNT(r.r_id) = 0;  -- Confirming no reviews exist

--Question # 20
-- This query retrieves the top 3 products with the highest total sales, including details of the reviews for each product.
WITH ProductSales AS (
    SELECT 
        p.p_id,
        p.p_name,
        SUM(oi.oi_quantity * oi.oi_price) AS total_sales
    FROM 
        Product p
    JOIN 
        Order_Item oi ON p.p_id = oi.p_id
    GROUP BY 
        p.p_id, p.p_name
),
RankedProducts AS (
    SELECT 
        ps.p_id,
        ps.p_name,
        ps.total_sales,
        ROW_NUMBER() OVER (ORDER BY ps.total_sales DESC) AS rank
    FROM 
        ProductSales ps
)
SELECT 
    rp.p_id,
    rp.p_name,
    rp.total_sales,
    r.rating,
    r.text
FROM 
    RankedProducts rp
LEFT JOIN 
    Review r ON rp.p_id = r.p_id
WHERE 
    rp.rank <= 3;  -- Get the top 3 products

--Question # 21
-- This query retrieves all customers who have placed orders, including details of their orders, even for orders with no associated customers. It also includes information about the shipping addresses for each order.
SELECT 
    c.c_id,
    c.c_name,
    o.o_id,
    o.o_number,
    o.total_amount,
    ca.lines,
    ca.city,
    ca.zipcode
FROM 
    Orders o
LEFT JOIN 
    Customer c ON o.c_id = c.c_id
LEFT JOIN 
    Customer_Address ca ON c.c_id = ca.c_id
ORDER BY 
    o.o_creation_time DESC;  -- Order by creation time for recent orders

--Question # 22
-- This query retrieves the total number of products and total revenue for each product category,
-- including products that may not have been sold, ordered in descending order based on total revenue.
SELECT 
    p.p_category,
    COUNT(p.p_id) AS total_products,
    COALESCE(SUM(oi.oi_quantity * oi.oi_price), 0) AS total_revenue
FROM 
    Product p
LEFT JOIN 
    Order_Item oi ON p.p_id = oi.p_id
GROUP BY 
    p.p_category
ORDER BY 
    total_revenue DESC;


--Question # 23
-- This query retrieves detailed information about products and their associated orders,
-- filtering to include only products in the 'Electronics' category with order quantities between 5 and 10.
SELECT 
    p.p_id,
    p.p_name,
    p.p_category,
    oi.oi_quantity,
    oi.oi_price,
    (oi.oi_quantity * oi.oi_price) AS total_revenue
FROM 
    Product p
LEFT JOIN 
    Order_Item oi ON p.p_id = oi.p_id
WHERE 
    p.p_category = 'Electronics'
    AND oi.oi_quantity BETWEEN 5 AND 10
ORDER BY 
    total_revenue DESC;


--Question # 24
-- This query retrieves product categories with the total number of products sold,
-- ordered in descending order by the total number of products sold,
-- and shows only categories with more than 10 products sold.
SELECT 
    p.p_category,
    COUNT(oi.p_id) AS total_sold
FROM 
    Product p
JOIN 
    Order_Item oi ON p.p_id = oi.p_id
GROUP BY 
    p.p_category
HAVING 
    COUNT(oi.p_id) > 5
ORDER BY 
    total_sold DESC;

--Question # 25
-- This query retrieves customers with the total number of orders they have placed,
-- ordered in descending order by the total number of orders,
-- and shows only customers who have placed more than 5 orders.
SELECT 
    c.c_id,
    c.c_name,
    COUNT(o.o_id) AS total_orders
FROM 
    Customer c
JOIN 
    Orders o ON c.c_id = o.c_id
GROUP BY 
    c.c_id, c.c_name
HAVING 
    COUNT(o.o_id) > 5
ORDER BY 
    total_orders DESC;
