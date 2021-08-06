
-- TABLE PERSON
-- #1

CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  age INTEGER,
  height INTEGER,
  city VARCHAR(100),
  favorite_color VARCHAR(100)
);

-- #2
INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES
('Al', 60, 185, 'San Diego', 'brown'),
('Bob', 25, 180, 'San Francisco', 'green'),
('Cindy', 88, 175, 'San Antonio', 'red'),
('Dan', 45, 188, 'Boston', 'pink'),
('Evan', 33, 165, 'New York', 'brown')

-- #3
SELECT * FROM person
ORDER BY height DESC;

-- #4
SELECT * FROM person
ORDER BY height ASC;

-- #5
SELECT * FROM person
ORDER BY age DESC;

-- #6
SELECT * FROM person
WHERE age > 20;

-- #7
SELECT * FROM person
WHERE age = 18;

-- #8
SELECT * FROM person
WHERE age < 20 OR age > 30;




-- #9
SELECT * FROM person
WHERE age != 27;

-- #10
SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color <> 'red';

-- #11
SELECT * FROM person
WHERE favorite_color NOT IN ('red', 'blue');

SELECT * FROM person
WHERE favorite_color != 'red' AND  favorite_color != 'blue';

-- #12
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green');

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- #13
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- #14
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');



-- TABLE ORDERS
-- #1
CREATE TABLE orders (
order_id SERIAL PRIMARY KEY, 
person_id INTEGER UNIQUE, 
product_name VARCHAR(200), 
product_price DOUBLE PRECISION, 
quantity INTEGER
);

-- #2
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(12, 'order name', 12.33, 5),
(16, 'order name2', 89.17, 1),
(72, 'order name3', 17.88, 3),
(22, 'order name4', 888.90, 1),
(26, 'order name5', 20.17, 1),
(45, 'order name6', 13.45, 8);

-- #3
SELECT * FROM orders;

-- #4
SELECT sum(quantity) FROM orders;

-- #5
SELECT sum(product_price * quantity) FROM orders;

-- #6
SELECT sum(product_price * quantity) 
FROM orders
WHERE person_id = 22;