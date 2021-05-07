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

-- CASE expression
SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second place'
	ELSE 'Normal'
	END raffle_results
FROM customer;

