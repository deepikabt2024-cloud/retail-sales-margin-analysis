-- ANALYSIS 

SELECT sub_category,
       ROUND(AVG(profit/sales)*100, 1) AS avg_margin_pct,
       ROUND(AVG(discount)*100, 1) AS avg_discount_pct,
       COUNT(*) AS total_orders
FROM orders
GROUP BY sub_category
ORDER BY avg_margin_pct ASC;



SELECT region,
       sub_category,
       ROUND(AVG(profit/sales)*100, 1) AS avg_margin_pct,
       ROUND(AVG(discount)*100, 1) AS avg_discount_pct,
       COUNT(*) AS total_orders
FROM orders
WHERE sub_category IN ('Binders','Appliances','Tables','Bookcases','Machines')
GROUP BY region, sub_category
ORDER BY region, avg_margin_pct ASC;


SELECT region,
       segment,
       ROUND(AVG(profit/sales)*100, 1) AS avg_margin_pct,
       ROUND(AVG(discount)*100, 1) AS avg_discount_pct,
       COUNT(*) AS total_orders
FROM orders
WHERE sub_category IN ('Binders','Appliances','Tables','Bookcases','Machines')
GROUP BY region, segment
ORDER BY region, avg_margin_pct ASC;



SELECT sub_category,
       ROUND(AVG(discount)*100, 1) AS avg_discount_pct,
       ROUND(AVG(quantity), 2) AS avg_quantity,
       ROUND(AVG(profit/sales)*100, 1) AS avg_margin_pct
FROM orders
GROUP BY sub_category
ORDER BY avg_margin_pct ASC;



SELECT o.sub_category,
       ROUND(AVG(profit/sales)*100, 1) AS avg_margin_pct,
       COUNT(*) AS total_orders,
       SUM(CASE WHEN r.returned = 'Yes' THEN 1 ELSE 0 END) AS return_count,
       ROUND(SUM(CASE WHEN r.returned = 'Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*), 1) AS return_rate_pct
FROM orders o
LEFT JOIN returns r ON o.order_id = r.order_id
GROUP BY o.sub_category
ORDER BY avg_margin_pct ASC;

-- SET SQL_SAFE_UPDATES = 0;

ALTER TABLE orders ADD COLUMN order_date_clean DATE;

UPDATE orders 
SET order_date_clean = STR_TO_DATE(order_date, '%m/%d/%Y');


SELECT YEAR(order_date_clean) AS year,
       ROUND(AVG(profit/sales)*100, 1) AS avg_margin_pct,
       ROUND(AVG(discount)*100, 1) AS avg_discount_pct
FROM orders
WHERE sub_category IN ('Binders','Appliances','Tables','Bookcases','Machines')
GROUP BY year
ORDER BY year ASC;


SELECT SUM(profit)
FROM orders
WHERE sub_category IN ('Binders','Appliances','Tables','Bookcases','Machines');



SELECT sub_category, 
ROUND(SUM(profit)/SUM(sales)*100,1) AS margin
FROM orders
GROUP BY sub_category
ORDER BY margin ASC;



select ROUND(sum(profit)/sum(sales) * 100, 2) as overall_margin
from orders;


SELECT sub_category,
ROUND(SUM(profit)/SUM(sales) * 100,2) as margin_pct
from orders
GROUP BY sub_category
ORDER BY margin_pct ASC;


SELECT region,sub_category,
ROUND(SUM(profit)/SUM(sales)* 100, 2) as margin_pct,
ROUND(AVG(discount) * 100 ,2) as avg_discount,
COUNT(*) AS total_orders
from orders
GROUP BY region,sub_category
ORDER BY margin_pct ASC
LIMIT 10;


select sub_category,
 ROUND(AVG(discount) * 100, 2) as avg_discount , 
 sum(profit) as total_profit  
 from orders 
 group by sub_category
 having avg(discount) > 0.20 AND SUM(profit) < 0;
 
 /*
 -- SUBQUERIES --
 
 select order_id, sub_category,region,profit from orders 
 where profit < (select AVG(profit) from orders);
 */
 /*
 SELECT sub_category, SUM(profit) as total_profit
 FROM orders
 GROUP BY sub_category
 HAVING sum(profit) < (SELECT AVG(profit) from orders);
 */
 
 