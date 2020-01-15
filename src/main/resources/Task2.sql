CREATE TABLE IF NOT EXISTS employee (id INT, salary INT);
TRUNCATE TABLE employee;
INSERT INTO employee (id, salary) VALUES ('1', '100');
INSERT INTO employee (id, salary) VALUES ('2', '200');
INSERT INTO employee (id, salary) VALUES ('3', '300');

SELECT max(employee.salary) FROM employee WHERE salary NOT IN (SELECT max(salary) FROM employee);
