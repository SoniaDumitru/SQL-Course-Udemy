-- LENGTH 
SELECT LENGTH(first_name) FROM customer LIMIT 10;

-- CONCATENATE
SELECT first_name || last_name FROM customer;
SELECT first_name || ' ' || last_name FROM customer;

-- How to create a custom email address:
SELECT LOWER(LEFT(first_name,1)) || LOWER(last_name) || '@gmail.com' AS custom_email FROM customer;

