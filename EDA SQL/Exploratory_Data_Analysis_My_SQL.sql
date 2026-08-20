-- Exploratry Data Analysis --

ALTER TABLE customers
DROP COLUMN acquisition_channel;


SELECT customer_segment,
    LENGTH(customer_segment) AS length
FROM customers
GROUP BY customer_segment;

UPDATE customers
SET customer_segment = TRIM(customer_segment);


SELECT sales_channel,
    LENGTH(sales_channel) AS length
FROM orders
GROUP BY sales_channel;

UPDATE orders
SET sales_channel = 'Mobile App'
WHERE sales_channel = 'MobileApp';



SELECT COUNT(order_id) AS total_orders
FROM orders;


SELECT COUNT(customer_id) AS total_customers
FROM customers;


SELECT COUNT(product_id) AS total_products
FROM products;


SELECT SUM(quantity) AS total_quantitys_sold
FROM orders;


SELECT ROUND(AVG(order_amount), 2) AS average_value
FROM orders;


SELECT ROUND(AVG(discount_amount), 2) AS average_discount
FROM orders;


SELECT order_id, quantity, unit_price, discount_amount,
    (quantity * unit_price) - discount_amount AS revenue
FROM orders;


WITH order_by_month AS
(
SELECT DATE_FORMAT(STR_TO_DATE(order_date, '%m/%d/%Y'), '%Y-%m') AS order_month,
    ROUND(SUM((quantity * unit_price) - discount_amount), 2) AS revenue
FROM orders
GROUP BY DATE_FORMAT(STR_TO_DATE(order_date, '%m/%d/%Y'), '%Y-%m')
)
SELECT *
FROM order_by_month
ORDER BY order_month;



SELECT products.product_id,
       products.product_name,
       SUM(orders.quantity) AS total_quantity
FROM orders
JOIN products
    ON orders.product_id = products.product_id
WHERE orders.quantity >= 5
GROUP BY products.product_id, products.product_name
ORDER BY total_quantity DESC
LIMIT 10;



SELECT products.*
FROM products
LEFT JOIN orders
    ON products.product_id = orders.product_id
WHERE orders.product_id IS NULL;



SELECT c.customer_id, c.customer_name, c.gender, c.age, c. customer_segment
FROM customers AS c
JOIN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING COUNT(*) > 10
) AS o
ON c.customer_id = o.customer_id;



SELECT c.customer_segment,
   ROUND( SUM((o.quantity * o.unit_price) - o.discount_amount), 2) AS revenue
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_segment
ORDER BY revenue DESC;



SELECT  c.customer_id, c.email, c.customer_segment,
   ROUND( SUM((o.quantity * o.unit_price) - o.discount_amount), 2) AS revenue
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id
GROUP BY c.email, c.customer_id
ORDER BY revenue DESC
LIMIT 20;



SELECT orders.payment_method,
   ROUND( SUM((orders.quantity * orders.unit_price) - orders.discount_amount), 2) AS revenue
FROM orders
GROUP BY orders.payment_method
ORDER BY revenue DESC;



SELECT orders.sales_channel,
   ROUND( SUM((orders.quantity * orders.unit_price) - orders.discount_amount), 2) AS revenue
FROM orders
GROUP BY orders.sales_channel
ORDER BY revenue DESC;


SELECT orders.warehouse,
   ROUND( SUM((orders.quantity * orders.unit_price) - orders.discount_amount), 2) AS revenue
FROM orders
GROUP BY orders.warehouse
ORDER BY revenue DESC;


SELECT *
FROM orders;