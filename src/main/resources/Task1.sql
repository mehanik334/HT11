CREATE TABLE person (personid INT, firstName VARCHAR(255), lastName VARCHAR(255));
CREATE TABLE adress (adressid INT, personid INT, city VARCHAR(255), state VARCHAR(255));
TRUNCATE table person;
INSERT INTO person (personid, lastName, firstName) VALUES ('1', 'Wang', 'Allen');
TRUNCATE table adress;
INSERT INTO adress (adressid, personid, city, state) VALUES ('1', '2', 'New York city', 'New York');

SELECT person.firstName,person.lastName,adress.city,adress.state
FROM person LEFT JOIN  adress ON person.personid = adress.personid;

