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
