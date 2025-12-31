-- Insert customers
INSERT INTO customers (name, email, join_date, city) VALUES
('Alice Johnson', 'alice@example.com', '2023-01-15', 'New York'),
('Bob Smith', 'bob@example.com', '2023-02-20', 'Los Angeles'),
('Charlie Davis', 'charlie@example.com', '2023-03-10', 'Chicago'),
('Dana Lee', 'dana@example.com', '2023-04-05', 'New York'),
('Evan Moore', 'evan@example.com', '2023-05-12', 'Los Angeles'),
('Fiona Green', 'fiona@example.com', '2023-06-18', 'Chicago'),
('George Harris', 'george@example.com', '2023-07-22', 'New York'),
('Hannah Clark', 'hannah@example.com', '2023-08-30', 'Los Angeles');

-- Insert products
INSERT INTO products (name, price, category, stock) VALUES
('Laptop', 1200.00, 'Electronics', 50),
('Smartphone', 800.00, 'Electronics', 100),
('Headphones', 150.00, 'Accessories', 200),
('Book: SQL Basics', 25.00, 'Books', 300),
('Coffee Mug', 10.00, 'Kitchen', 150),
('Desk Chair', 200.00, 'Furniture', 80),
('Monitor', 300.00, 'Electronics', 60),
('Notebook', 5.00, 'Stationery', 500);

-- Insert orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2023-05-01', 1350.00),
(2, '2023-05-05', 810.00),
(3, '2023-05-10', 175.00),
(4, '2023-05-15', 1200.00),
(5, '2023-06-01', 300.00),
(6, '2023-06-05', 205.00),
(7, '2023-06-10', 800.00),
(8, '2023-06-15', 150.00),
(1, '2023-07-01', 500.00),
(2, '2023-07-05', 25.00);

-- Insert order_items
INSERT INTO order_items (order_id, product_id, quantity, subtotal) VALUES
(1, 1, 1, 1200.00), (1, 3, 1, 150.00),
(2, 2, 1, 800.00), (2, 5, 1, 10.00),
(3, 4, 1, 25.00), (3, 3, 1, 150.00),
(4, 1, 1, 1200.00),
(5, 7, 1, 300.00),
(6, 6, 1, 200.00), (6, 8, 1, 5.00),
(7, 2, 1, 800.00),
(8, 3, 1, 150.00),
(9, 7, 1, 300.00), (9, 6, 1, 200.00),
(10, 4, 1, 25.00);