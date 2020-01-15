CREATE TABLE IF NOT EXISTS employee (id INT, name VARCHAR(255), salary INT, managerId INT);
TRUNCATE table employee;
INSERT INTO employee (id, name, salary, managerId) VALUES ('1', 'Joe', '70000', '3');
INSERT INTO employee (id, name, salary, managerId) VALUES ('2', 'Henry', '80000', '4');
INSERT INTO employee (id, name, salary, managerId) VALUES ('3', 'Sam', '60000', 'None');
INSERT INTO employee (id, name, salary, managerId) VALUES ('4', 'Max', '90000', 'None');

SELECT employee.name FROM employee WHERE managerId = 0 AND (SELECT max(salary) FROM employee);