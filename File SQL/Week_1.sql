-- STEP 1: Create Database --
use master
CREATE database dannys_diner;
GO

use dannys_diner
go

-- STEP 2: Create Table menu --
CREATE TABLE menu (
  "product_id" INTEGER primary key,
  "product_name" VARCHAR(5),
  "price" INTEGER
);
GO
-- Insert new records in table--
INSERT INTO menu
  ("product_id", "product_name", "price")
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
GO 

-- STEP 3: Create Table members --
CREATE TABLE members (
  "customer_id" VARCHAR(1) primary key,
  "join_date" DATE
);
GO

-- Insert new records in table--
INSERT INTO members
  ("customer_id", "join_date")
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09'),
  ('C','2021-01-05');
GO

-- STEP 2: Create Table sales --
  CREATE TABLE sales (
  "sale_id" varchar(2) primary key,
  "customer_id" VARCHAR(1),
  "order_date" DATE,
  "product_id" INTEGER,
  constraint fk_key_customer foreign key (customer_id) references members (customer_id),
  constraint fk_key_product foreign key (product_id) references menu (product_id)
);
GO
-- Insert new records in table--
INSERT INTO sales
  ( "sale_id","customer_id", "order_date", "product_id")
VALUES
  ('1','A', '2021-01-01', '1'),
  ('2','A', '2021-01-01', '2'),
  ('3','A', '2021-01-07', '2'),
  ('4','A', '2021-01-10', '3'),
  ('5','A', '2021-01-11', '3'),
  ('6','A', '2021-01-11', '3'),
  ('7','B', '2021-01-01', '2'),
  ('8','B', '2021-01-02', '2'),
  ('9','B', '2021-01-04', '1'),
  ('10','B', '2021-01-11', '1'),
  ('11','B', '2021-01-16', '3'),
  ('12','B', '2021-02-01', '3'),
  ('13','C', '2021-01-01', '3'),
  ('14','C', '2021-01-01', '3'),
  ('15','C', '2021-01-07', '3');

  -- QUESTION --
  -- 1. What is the total amount each customer spent at the restaurant?
  -- 2. How many days has each customer visited the restaurant?
  -- 3. What was the first item from the menu purchased by each customer?
  -- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
  -- 5. Which item was the most popular for each customer?
  -- 6. Which item was purchased first by the customer after they became a member?
  -- 7. Which item was purchased just before the customer became a member?
  -- 8. What is the total items and amount spent for each member before they became a member?
  -- 9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier — how many points would each customer have?
  -- 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi — how many points do customer A and B have at the end of January?
  -- 