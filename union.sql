-- UNION grabs two SELECT statements
SELECT last_update FROM film_actor
UNION 
SELECT last_update FROM film_category;