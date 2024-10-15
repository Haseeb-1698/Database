
# Title of Project: E-Commerce System


1. #Introduction
    This project focuses on creating an e-commerce system that incorporates essential elements including orders, products, sellers, and customers.
	Our goal is to capture the intricate relationships that exist throughout an online marketplace by creating a thorough database structure.
	To depict the links between entities, the project entails developing an Entity-Relationship Diagram (ERD) and utilizing SQL to transform it into a relational model.
	In order to gain valuable insights from the data and improve our comprehension of consumer behavior and sales performance, we will also apply a variety of queries.
	
2. #Explanation of ERD
    ERD compries of 11 entities, their attributes along with their relationship with other entities.
	1-Seller containing primary key as s_id and has 1 to many Relationship with product.
	(1 seller sell multiple products and 1 product can be sold by multiple sellers).
	2-Product containing primary key as p_id , foreign key as s_id and has 1 to many(N) Relationship with review , orderitems and cartitems.
	(1 product receives multiple reviews . 
    (1 product contains multiple order items.  
	(1 product is added in multiple cart items.  
	 Product contains 1 to 1 relation with Inventory
	(1 product is present in 1 inventory .
	3-Customer containing primary key as c_id and has 1 to many Relationship with order, review and shoppingcart.
	(1 customer can place multiple orders .
	(1 customer can give multiple reviews .
	(1 customer can place multiple products in shopping cart .
	4-Shopping Cart containing primary key as cart_id, foreign key as customer id(c_id) and has 1 to many Relationship with cart items and many to 1 with customers(explained in customer).
	(1 shopping cart can contain multiple cartitems .
	5-Cart Items containing primary key as cartitem_id, foreign keys cart_id and producy id (p_id) and has  many to 1 Relationship with product.
	6-Inventory containing primary key as inventoryid( i_id) and foreign key as productid(p_id) and has 1 to 1 Relationship with product.
	7-Payment containing primary key as paymentid( pay_id) and foreign key as orderid(o_id) and has M to 1 Relationship with Order.
	(There can be multiple payments on one order depending upon sellers);
	8-Customer Address containing primary key as addressidid( a_id) and foreign key as Customerid(p_id) and has many to 1 Relationship with customer.
	(Multiple addresses associated with one customer like permanent, residing).
	9-Review containing primary key as r_id, foreign keys cutomerid(c_id) and producy id (p_id) and has  many to 1 Relationship with product and customer.
	10-Order containing primary key as o_id, foreign keys cutomerid(c_id) and has  many to many Relationship with order item and many to 1  paymwnt and customer.
	(Many orders contain many items or many items are present in different orders).
	11-Order Items containing primary key as oi_id, foreign keys product id(p_id) and orderid (o_id) and has  many to many Relationship with order and many to 1 with product.
	
	
	
3. #Questions

   #q1
   11 tables are created with dummy data for all the above mentioned entities.
   #q2
   Three main queries in Q2
   --Create: Tables, views, and indexes are examples of database objects that are defined and structured by a CREATE query in SQL. It creates the framework for effectively managing, arranging, and storing data in a database.
   --Insert: To enable data entry and populate the database, new records must be added to a table using an INSERT query in SQL. In order to keep the database up to date and relevant for operations and analysis, it assists in maintaining and updating the data that is kept there. 
   --Select: In order to retrieve data from a database and allow users to access particular information, the SELECT query is necessary. It is the foundation of SQL reporting and data analysis.
   --Alter:In order to suit evolving data requirements, the ALTER TABLE statement is necessary for altering the structure of an existing table. It permits the addition, removal, or alteration of columns and constraints.
   ![Q2](https://github.com/user-attachments/assets/cda52bf6-11e8-4e58-bab8-904bce94160b)

   #q3
   ![Q3](https://github.com/user-attachments/assets/262796eb-1564-4e73-89d3-0a9d1d05bace)

   #q4
   ![Q4](https://github.com/user-attachments/assets/3784489c-4942-403a-ad4a-0b880941c0ae)

   #q5
   ![Q5](https://github.com/user-attachments/assets/03eeea72-e95d-4178-927a-b182e750f24b)

   #q6
   <img width="960" alt="Q6" src="https://github.com/user-attachments/assets/7a8d7ab0-e54f-449d-85ac-0c22ec24fd33">

   #q7
   ![Q7](https://github.com/user-attachments/assets/cca795e9-a065-4338-b5f8-669bb836ffa6)

   #q8
   ![Q8](https://github.com/user-attachments/assets/e414758d-105f-418d-9fbb-48cb034fc7f3)

   #q9
   ![Q9](https://github.com/user-attachments/assets/59083d5f-a36a-49d2-8d25-f4495ef260ca)

   #q10
   ![Q10](https://github.com/user-attachments/assets/f5510937-7f7d-44c9-b140-e69f4da68b79)

   #q11
   ![Q11](https://github.com/user-attachments/assets/7d1afd00-ae0d-41a5-9715-cb58de0c1587)

   #q12
   ![Q12](https://github.com/user-attachments/assets/3af4ce39-cf2b-4c15-a092-5e818ec2726b)

   #q13
   <img width="960" alt="Q13" src="https://github.com/user-attachments/assets/199490c9-9023-44d0-a234-c59d51e73efb">

   #q14
   ![Q14](https://github.com/user-attachments/assets/07e417f4-2834-432d-8e89-9558246e878d)

   #q15
   
   #q16
   ![Q16](https://github.com/user-attachments/assets/05590770-ea79-4af1-b389-a8af4f803bcd)

   #q17
   ![Q17](https://github.com/user-attachments/assets/7ee84eaa-c86f-4787-b895-918ec294bbe2)

   #q18
   ![Q18](https://github.com/user-attachments/assets/5873c3d3-123e-4191-82e2-875d70388fd2)

   #q19
   ![Q19](https://github.com/user-attachments/assets/be5d1fc7-6ac3-4b19-a17c-71b998d28a6e)

   #q20
   ![Q20](https://github.com/user-attachments/assets/d06429fa-55b9-4530-8a39-9be1a388f1c0)

   #q21
   <img width="960" alt="Q21-a" src="https://github.com/user-attachments/assets/0d8ac4aa-3cdc-48e0-84ed-521a112605e0">
   
<img width="960" alt="Q21-b" src="https://github.com/user-attachments/assets/f960e5b4-f61e-489a-951f-28b2b2d07e3a">

   #q22
   <img width="960" alt="Q22" src="https://github.com/user-attachments/assets/5ca66046-39a3-40f9-99e2-9e4d8cca4ebe">

   #q23
   <img width="960" alt="Q23" src="https://github.com/user-attachments/assets/b7243e31-8632-4938-a931-b3975bf52639">

   #q24
   <img width="960" alt="Q24" src="https://github.com/user-attachments/assets/131814ed-4112-4c96-afdd-012266187339">

   #q25
   ![Q25](https://github.com/user-attachments/assets/cffc6a56-922e-48d2-b008-97de2d6982e0)

4. #Challenges
    1-Conflicts with Table Creation: We had problems with conflicts when using SQL commands to create tables because the tables were already present in the database.
	The error messages We received after running my scripts with modifications said that the tables We was trying to build were already in existence.

    2-Complex Queries: Because they necessitated a thorough comprehension of the connections between various tables, writing queries involving numerous joins became difficult.
	It was frequently difficult to manage the joins' complexity while maintaining proper syntax and logic.

    3-Date-Related Queries: It was very challenging to implement queries pertaining to dates.
	The layout, comparison, and manipulation of date variables presented difficulties for me, making it more difficult to retrieve data based on time limits.

5. #Solutions
    Table Creation Management: Prior to executing my scripts, We carefully reviewed the current tables and their structures to prevent conflicts with table creation.
	It reduced the need for adjustments and prevented mistakes with pre-existing tables by making sure that It only made the tables that were required.

    Query Simplification: We divided difficult questions into digestible chunks in order to address them. 
	By carefully implementing joins and iterating through rows of several tables one at a time, We was able to retain accuracy in the findings and make the rationale more clear. 
	Better debugging and comprehension of the queries were also made possible by this method.
6. #Conclusion
    To sum up, this e-commerce system project effectively illustrated how to create a thorough database structure that captures the complex relationships between different entities in an online marketplace.
	We learned a lot about consumer behavior and sales success by developing an Entity-Relationship Diagram (ERD) and putting sophisticated SQL queries into practice.
	Careful preparation and methodical execution successfully solved the difficulties encountered during table design, query complexity, and date manipulation.
	All things considered, this project improved our database design and administration abilities and gave us a strong basis for comprehending the dynamics of e-commerce systems.
	In order to satisfy changing market expectations, future work could concentrate on improving queries and extending the system's capability.
