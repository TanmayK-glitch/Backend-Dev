-- SELECT COUNT(*) FROM orders
-- SELECT SUM(amount) FROM orders
-- SELECT AVG(amount) from orders

-- <<Group>> By--
-- SELECT user_id, SUM(amount) as total_spent
-- FROM orders
-- GROUP BY user_id;
-- SELECT user_id, COUNT(*)
-- FROM orders
-- GROUP BY user_id;

-- <<Having>> --
-- SELECT user_id, SUM(amount) as amount_spent
-- FROM orders
-- GROUP BY user_id
-- HAVING SUM(amount) > 100

-- <<JOIN>> --
-- SELECT users.name, orders.amount
-- FROM orders
-- JOIN users ON users.id = orders.user_id; 

-- <<Left Join>> --
-- SELECT users.name, orders.amount
-- FROM users
-- LEFT JOIN orders ON users.id = orders.user_id
-- WHERE orders.id IS NULL

-- SELECT * FROM orders
-- WHERE order_date >= '2023-06-01'
-- AND order_date < '2023-07-01'
-- AND total_amount < 300


-- SELECT * FROM customers
-- WHERE city = 'New York' AND email LIKE '%@example.com'

-- SELECT * FROM products 
-- WHERE stock >= 100 
-- AND stock <= 300

-- SELECT * FROM products
-- ORDER BY stock ASC
-- LIMIT 3

-- SELECT SUM(quantity) AS sum_qty, AVG(subtotal) AS avg_subtotal FROM order_items

-- SELECT category ,COUNT(stock) AS stock_count
-- FROM products
-- GROUP BY category

-- SELECT customer_id, SUM(total_amount) AS total_amount
-- FROM orders
-- GROUP BY customer_id 
-- ORDER BY customer_id DESC 

-- SELECT SUM(total_amount) AS Total_Amount, EXTRACT(MONTH FROM order_date) AS Month
-- FROM orders
-- GROUP BY MONTH

-- SELECT * FROM products
-- WHERE category IN (
--     SELECT category FROM products
--     GROUP BY category
--     HAVING COUNT(stock) > 2
-- )

-- Group orders by customer_id and show customers
--  who have spent more than 1000 in total (using SUM).

-- SELECT * FROM orders
-- WHERE customer_id IN (
--     SELECT customer_id FROM orders
--     GROUP BY customer_id
--     HAVING SUM(total_amount) > 1000
-- )

-- Group order_items by order_id and
--  show orders with average subtotal greater than 200 (using AVG).

-- SELECT * FROM order_items
-- WHERE order_id IN (
--     SELECT order_id FROM order_items
--     GROUP BY order_id
--     HAVING AVG(subtotal) > 200
-- ) 

SELECT * FROM products
WHERE category IN (
    SELECT category FROM products
    GROUP BY category
    HAVING SUM(stock) >= 500
)