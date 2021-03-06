-- INNER JOIN = result with set of records in both tables
-- INTERSECTION OF Venn Diagram

SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT payment_id, payment.customer_id, first_name 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

-- FULL OUTER JOIN - selects exerything in both tables unless where statement is added to eliminate null values
SELECT * FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT * FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE payment.customer_id IS null 
OR customer.customer_id IS null;

-- LEFT OUTER JOIN - results in a set of records that are in the left table, if there is no match with the right table the results are null
-- if we use where we can select unique values to the left table
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory ON 
inventory.film_id = film.film_id;

SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory ON 
inventory.film_id = film.film_id
WHERE inventory.film_id IS null;

-- RIGHT OUTER JOIN
SELECT film.film_id, title, inventory_id, store_id
FROM inventory
RIGHT JOIN film ON 
inventory.film_id = film.film_id;

-- INNER JOIN 
SELECT email, customer.address_id FROM customer
INNER JOIN address 
ON customer.address_id = address.address_id
WHERE district = 'California';

-- TWO INNER JOINS IN ONE QUERY
SELECT title, first_name, last_name FROM film_actor 
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film.film_id = film_actor.film_id
WHERE first_name='Nick' AND actor.last_name='Wahlberg';