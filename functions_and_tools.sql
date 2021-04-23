-- TIMESTAMPS AND EXTRACT (useful when creating rather and quering)
-- TIME - only time
-- DATE - only date 
-- TIMESTAMP - combines both date and time
-- TIMESTAMPZ - date and time plus time zone

-- TIMEZONE
-- NOW
-- TIMEOFDAY
-- CURRENT_TIME
-- CURRENT_DATE

-- SHOW ALL (to see all params) ex: SHOW TIMEZONE;

SELECT NOW();
SELECT TIMEOFDAY();
SELECT CURRENT_TIME;
SELECT CURRENT_DATE;

-- EXTRACT INFO FROM A TIME BASED DATA TYPE

-- EXTRACT() a subcomponent of a date value
EXTRACT(YEAR FROM date_col);

SELECT EXTRACT(YEAR FROM payment_date) AS my_year
FROM payment; 

SELECT COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;

-- AGE()
AGE(date_col);

SELECT AGE(payment_date) AS age
FROM payment; 

-- TO_CHAR()
SELECT TO_CHAR(payment_date, 'MON+YYYY') AS age
FROM payment; 

SELECT DISTINCT (TO_CHAR(payment_date, 'MONTH')) FROM payment;




