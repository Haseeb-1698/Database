
# Title of Project: E-Commerce Database System

## 1. Introduction
This project centers on the development of an e-commerce database system that captures core components such as orders, products, sellers, and customers. The goal is to model the intricate relationships that govern an online marketplace by creating a comprehensive database structure. 

This project involves creating an Entity-Relationship Diagram (ERD) and converting it into a relational database model using SQL. Additionally, we run queries to extract valuable insights into customer behavior and sales performance, enhancing our understanding of the marketplace.

## 2. ERD Explanation
The ERD consists of various entities and their attributes, along with their relationships to each other:
1. **Seller**: Primary key is `s_id`, with a one-to-many relationship with `Product`. One seller can sell multiple products, and one product can be sold by multiple sellers.
2. **Product**: Primary key is `p_id`, foreign key `s_id`, and it has a one-to-many relationship with `Review`, `OrderItems`, and `CartItems`. Additionally, it has a one-to-one relationship with `Inventory`.
3. **Customer**: Primary key is `c_id`, and it has one-to-many relationships with `Order`, `Review`, and `ShoppingCart`.
4. **Shopping Cart**: Primary key is `cart_id`, foreign key `c_id`, with a one-to-many relationship with `CartItems`.
5. **Cart Items**: Primary key is `cartitem_id`, foreign keys `cart_id` and `p_id`, and it has a many-to-one relationship with `Product`.
6. **Inventory**: Primary key is `inv_id`, foreign key `p_id`, and it has a one-to-one relationship with `Product`.
7. **Order**: Primary key is `order_id`, foreign key `c_id`, and it has a one-to-many relationship with `OrderItems`.
8. **Order Items**: Primary key is `orderitem_id`, foreign keys `order_id` and `p_id`, with many-to-one relationships to `Product` and `Order`.
9. **Review**: Primary key is `review_id`, foreign keys `c_id` and `p_id`, with many-to-one relationships with both `Product` and `Customer`.
10. **Payment**: Primary key is `payment_id`, foreign key `order_id`, and it has a one-to-one relationship with `Order`.
11. **Customer Address**: Primary key is `address_id`, foreign key `c_id`, with a one-to-many relationship with `Order`.

Here's the ER diagram for the project:

![ERD](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/Assignment2.drawio.png)

## 3. Queries
This project involves running 25 queries, each designed to extract meaningful information from the e-commerce database. Below are the queries with brief descriptions and their associated screenshots:

- **Query 3**: Write four queries and explain their importance.  
   _This query helps to evaluate different aspects such as customer behavior, sales data, and product reviews._  
   ![Query 3 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q3%20(1).png)

- **Query 4**: List the top 5 customers who spent the most money.  
   _This query identifies the top customers based on their total spending._  
   ![Query 4 Result](https://github.com/Haseeb-1698/Database/blob/c4ddc7e0964868eace31bf8ef9d1a7a1ee9a9d98/A01/q4.png)

- **Query 5**: Retrieve products with the highest average ratings.  
   _This query displays the products with the best average customer reviews._  
   ![Query 5 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q5.png)

- **Query 6**: Find customers who have made more than one purchase on the same day.  
   _Identifies customers with frequent purchasing patterns on the same day._  
   ![Query 6 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q6.png)

- **Query 7**: Calculate the total revenue for each product category.  
   _Displays the total revenue generated for each category._  
   ![Query 7 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q7.png)

- **Query 8**: List customers who have not reviewed any products.  
   _Identifies customers who have made purchases but not reviewed any products._  
   ![Query 8 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q8.png)

- **Query 9**: Find products with quantities below the average quantity in stock.  
   _Shows products whose stock levels are below the average._  
   ![Query 9 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q9.png)

- **Query 10**: Calculate the total number of orders for each customer and show only those with more than 5 orders.  
   _Identifies high-purchase customers with more than 5 orders._  
   ![Query 10 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q10.png)

- **Query 11**: Retrieve the 3 most recent orders for a specific customer.  
   _Displays the most recent orders for a given customer._  
   ![Query 11 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q11.png)

- **Query 12**: List customers who have purchased products from at least two different sellers.  
   _Highlights customers who are buying from multiple sellers._  
   ![Query 12 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q12.png)

- **Query 13**: Find customers who have placed an order in the last 30 days.  
   _Shows customers who have recently made purchases._  
   ![Query 13 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q13.png)

- **Query 14**: List customers who have made a purchase in every product category.  
   _Displays customers who have bought products from all categories._  
   ![Query 14 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q14.png)

- **Query 15**: Calculate the total number of products sold by each seller.  
   _Shows the sales performance of each seller._  
   ![Query 15 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q15.png)
- **Query 16**: Retrieve the top 5 products with the highest sales in the last month.  
   _Lists the top-selling products for the last month._  
   ![Query 16 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q16.png)

- **Query 17**: Retrieve the latest 5 orders along with customer details and order items for each order.  
   _Shows detailed information about the latest 5 orders._  
   ![Query 17 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q17.png)

- **Query 18**: Retrieve customers who have made purchases in every product category, along with the total number of categories they have purchased from.  
   _Identifies customers with diverse purchasing habits._  
   ![Query 18 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q18.png)

- **Query 19**: List products that have never been reviewed and have quantities in stock greater than zero, along with the average rating for their category.  
   _Displays unsold products and their category ratings._  
   ![Query 19 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q13.png)

- **Query 20**: Find the top 3 products with the highest total sales, including details of the reviews for each product.  
   _Lists the highest-selling products with review details._  
   ![Query 20 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q20.png)

- **Query 21**: Retrieve all customers who have placed orders, and include details of their orders, even for orders with no associated customers. Include information about the shipping addresses for each order.  
   _Provides order and shipping details for all customers._  
   ![Query 21 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q21.png)

- **Query 22**: Retrieve the total number of products and the total revenue for each product category.  
   _Displays revenue details for each category, even for unsold products._  
   ![Query 22 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q22.png)

- **Query 23**: Retrieve detailed information about products and their associated orders.  
   _Shows detailed product and order information for the 'Electronics' category._  
   ![Query 23 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q23.png)

- **Query 24**: Retrieve product categories with the total number of products sold, ordered in descending order by the total number of products sold.  
   _Lists product categories with more than 10 items sold._  
   ![Query 24 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q24.png)

- **Query 25**: Retrieve customers with the total number of orders they have placed, ordered in descending order by the total number of orders.  
   _Shows customers with more than 5 orders placed._  
   ![Query 25 Result](https://github.com/Haseeb-1698/Database/blob/7b367695e6e58ec5b6b9f95ab43dee527c54780b/A01/q25.png)

## 4. Challenges
During the project, we encountered several challenges:
1. **Table Creation Conflicts**: Pre-existing tables posed issues when trying to create new ones with overlapping names or attributes.
2. **Query Complexity**: Managing complex queries involving numerous joins was difficult. Ensuring that the logic and syntax were correct presented a significant challenge.
3. **Date-Related Queries**: Queries involving dates, including their comparison and manipulation, required extra attention and led to difficulties retrieving data within specific timeframes.

## 5. Solutions
To address the challenges encountered, we implemented the following solutions:
1. **Table Creation Management**: We reviewed all existing tables before running scripts to avoid conflicts. This helped ensure only the necessary tables were created.
2. **Query Simplification**: Complex queries were divided into smaller, manageable parts. This method made it easier to execute joins correctly and improved overall query clarity and accuracy.


## 6. Conclusion
This e-commerce database system project was successful in illustrating how to create a comprehensive database structure that models the complexities of an online marketplace. Through the use of an Entity-Relationship Diagram (ERD) and the execution of complex SQL queries, we gained valuable insights into consumer behavior and sales performance.

By addressing the challenges in table design, query complexity, and date manipulation, we were able to enhance our understanding of database design and management. Future work could involve optimizing queries and expanding the system's capabilities to meet evolving market needs.
