-- Use of SELECT
SELECT first_name, last_name FROM actor;

-- How many unique values are in the given column
SELECT DISTINCT release_year FROM film;

SELECT DISTINCT rental_rate FROM film;

-- COUNT number of input rows
SELECT COUNT(*) FROM customer;

-- COUNT combined with DISTINCT
SELECT COUNT(DISTINCT(amount)) FROM payment;

-- Conditions are used to filter the rows: comparison operators & logical operators
SELECT COUNT(*) FROM film WHERE rental_rate > 4 AND replacement_cost >= 19.99;

SELECT email FROM customer 
WHERE first_name = 'Nancy'
AND last_name = 'Thomas';

-- ORDER BY to order a column
SELECT * FROM customer ORDER BY first_name;
SELECT * FROM customer ORDER BY first_name DESC;
SELECT store_id, first_name, last_name FROM customer ORDER BY store_id DESC, first_name ASC;

-- LIMIT the number of rows & goes at the very end of the query
SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 3;

-- See general layout of the table
SELECT * FROM payment LIMIT 1;

-- ORDER BY & LIMIT 
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;

SELECT COUNT(title) FROM film
WHERE length <= 50;

-- BETWEEN / NOT BETWEEN can be used to match a value between a range of values
SELECT COUNT(*) FROM payment 
WHERE amount BETWEEN 8 AND 9;

SELECT COUNT(*) FROM payment 
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

SELECT * FROM payment 
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

-- IN / NOT IN to check if a value exists in a list of multiple options
SELECT COUNT(*) FROM payment
WHERE amount IN (0.99, 1.98);

SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99, 1.98);

SELECT * FROM customer
WHERE first_name IN ('John', 'Julie');