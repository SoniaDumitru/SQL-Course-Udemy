-- EXISTS operator used to test for existance of rows in a subquery
SELECT column_name 
FROM table_name
WHERE EXISTS 
(SELECT colum_name FROM table_name WHERE condition);

SELECT student.grade
FROM test_scores 
WHERE grade > (SELECT AVG(grade) FROM test_scores);

SELECT title, rental_rate FROM film
WHERE rental_rate > 
(SELECT AVG(rental_rate) FROM film); -- subquery that returns one value

SELECT film_id, title 
FROM film 
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-06-30')
ORDER BY title;