-- self-join is a query in which a table is joined to itself, 
-- useful for comparing values in a column of rows whithin the same table
-- can be seen as a join of two copies of the same table
SELECT f1.title, f2.title, f1.length 
FROM film AS f1
INNER JOIN film AS f2
ON f1.film_id != f2.film_id
AND f1.length = f2.length;