CREATE TABLE IF NOT EXISTS person (id INT, email VARCHAR(255));
TRUNCATE table person;
INSERT INTO person (id, email) VALUES ('1', 'a@b.com');
INSERT INTO person (id, email) VALUES ('2', 'c@d.com');
INSERT INTO person (id, email) VALUES ('3', 'a@b.com');

SELECT person.email FROM person GROUP BY email HAVING COUNT(*)>1;
