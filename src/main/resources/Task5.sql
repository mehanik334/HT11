CREATE TABLE IF NOT EXISTS customers (id INT, name VARCHAR(255));
CREATE TABLE IF NOT EXISTS orders (id INT, customerId INT);
TRUNCATE table customers;
INSERT INTO customers (id, name) VALUES ('1', 'Joe');
INSERT INTO customers (id, name) VALUES ('2', 'Henry');
INSERT INTO customers (id, name) VALUES ('3', 'Sam');
INSERT INTO customers (id, name) VALUES ('4', 'Max');
TRUNCATE TABLE orders;
INSERT INTO orders (id, customerId) VALUES ('1', '3');
INSERT INTO orders (id, customerId) VALUES ('2', '1');

SELECT customers.name FROM customers WHERE customers.id NOT IN (SELECT orders.customerId FROM orders);