CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO users (id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'Diana'),
(5, 'Eve');

INSERT INTO orders (id, user_id, amount) VALUES
(1, 1, 150.00),
(2, 1, 75.50),
(3, 2, 200.00),
(4, 3, 49.99),
(5, 1, 120.00),
(6, 4, 300.00),
(7, 2, 95.25),
(8, 5, 180.00),
(9, 3, 160.99),
(10, 2, 99.00);