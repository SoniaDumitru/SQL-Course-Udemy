-- CASE expession syntax = something to use for when a in between of value 5..10
CASE expresion 
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ELSE some_other_result
END

-- General CASE Statement -> checking for equality
SELECT customer_id, 
CASE 
	WHEN (customer_id <= 100) THEN 'Premium Customers'
	WHEN (customer_id BETWEEN 100 and 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_class
FROM customer;

-- CASE expressions
SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second place'
	ELSE 'Normal'
	END raffle_results
FROM customer;


-- Return rental_rate next to a column with 0 and 1
SELECT rental_rate,
CASE rental_rate 
	WHEN 0.99 THEN 1
	ELSE 0 
END
FROM film;

-- Sum all movies 
SELECT
SUM(CASE rental_rate 
	WHEN 0.99 THEN 1
	ELSE 0 
END) AS films_with_ninty_nine
FROM film;

-- Return 3 columns with counting how many movies are 1.99, 2.99, 4.99
SELECT
SUM(CASE rental_rate 
	WHEN 0.99 THEN 1
	ELSE 0 
END) AS bargains,
SUM(CASE rental_rate
	WHEN 2.99 THEN 1
	ELSE 0
END) AS regular,
SUM(CASE rental_rate 
	WHEN 4.99 THEN 1
	ELSE 0 
END) AS premium
FROM film;

-- Return 3 columns of movies by rate
SELECT
SUM(CASE rating 
	WHEN 'R' THEN 1
	ELSE 0 
END) AS r,
SUM(CASE rating
	WHEN 'PG' THEN 1
	ELSE 0
END) AS pg,
SUM(CASE rating 
	WHEN 'PG-13' THEN 1
	ELSE 0 
END) AS pg13
FROM film;
