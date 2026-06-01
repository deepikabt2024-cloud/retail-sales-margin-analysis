-- CREATE DATABASE retail_analysis;
-- DROP TABLE orders;
/*
CREATE TABLE orders (
  row_id INT,
  order_id VARCHAR(20),
  order_date VARCHAR(20),
  ship_date VARCHAR(20),
  ship_mode VARCHAR(30),
  customer_id VARCHAR(20),
  customer_name VARCHAR(100),
  segment VARCHAR(20),
  country VARCHAR(30),
  city VARCHAR(30),
  state VARCHAR(30),
  postal_code VARCHAR(10),
  region VARCHAR(20),
  product_id VARCHAR(20),
  category VARCHAR(30),
  sub_category VARCHAR(30),
  product_name VARCHAR(300),
  sales DECIMAL(10,4),
  quantity INT,
  discount DECIMAL(4,2),
  profit DECIMAL(10,4)
);

*/
-- SET GLOBAL local_infile = 1;
/*
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/superstore_orders.csv'
INTO TABLE orders
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(row_id, order_id, order_date, ship_date, ship_mode, customer_id, customer_name, 
segment, country, city, state, postal_code, region, product_id, category, 
sub_category, product_name, sales, quantity, discount, profit);
*/

/*
CREATE TABLE returns (
  returned VARCHAR(5),
  order_id VARCHAR(20)
);
*/
/*
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/superstore_returns.csv'
INTO TABLE returns
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(returned, order_id);
*/

