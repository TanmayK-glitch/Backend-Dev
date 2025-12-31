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

SELECT * from customers
ORDER BY join_date ASC
LIMIT 5
