-- LENGTH 
SELECT LENGTH(first_name) FROM customer LIMIT 10;

-- CONCATENATE
SELECT first_name || last_name FROM customer;
SELECT first_name || ' ' || last_name FROM customer;

