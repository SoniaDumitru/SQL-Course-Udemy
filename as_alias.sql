-- JOINs (INNER, OUTER, FULL, UNIONS)

-- AS - give new names/alias for the selected column - you can only use it in a SELECT statement
SELECT customer_id AS customer FROM payment;

SELECT SUM(amount) AS net_revenue FROM payment;




