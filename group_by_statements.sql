-- AGREGATE FUNCTIONS = a function that takes multiple inputs and return a single output

-- MIN
SELECT MIN(replacement_cost) FROM film;

-- MAX
SELECT MAX(replacement_cost) FROM film;

-- MIN & MAX 
SELECT MIN(replacement_cost), MAX(replacement_cost) FROM film;

-- AVG & ROUND
SELECT ROUND(AVG(replacement_cost)) FROM film;

SELECT ROUNd(AVG(replacement_cost), 2) FROM film;

-- SUM
SELECT SUM(replacement_cost) FROM film;

-- GROUP BY
-- 1. choose a categorical column 
-- 2. categorical column is non-continuous 

-- SELECT category_column, AGG(data_col) FROM table GROUP BY category col;
SELECT company, division, SUM(sales)
FROM finance_table 
WHERE division IN ('marketing', 'transport')
GROUP BY company, division;

SELECT customer_id FROM payment
GROUP BY customer_id;

SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY customer_id;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) ASC;

SELECT customer_id, staff_id, SUM(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY staff_id, customer_id;

-- SELECT just the date information with DATE
SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;

SELECT staff_id, COUNT(*) FROM payment
GROUP BY staff_id;

SELECT rating, ROUND(AVG(replacement_cost), 2) FROM film
GROUP BY rating;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(AMOUNT)
LIMIT 10;

-- HAVING clause allows to filter after an aggregation has taken place
SELECT customer_id, SUM(amount) FROM payment 
GROUP BY customer_id
HAVING SUM(amount) > 200;

SELECT store_id, COUNT(customer_id) FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;

SELECT customer_id, COUNT(*) FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40;

SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;






