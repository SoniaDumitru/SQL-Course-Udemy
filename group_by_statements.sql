-- AGREGATE FUNCTIONS = a function that takes multiple inputs and return a single output

-- MIN
SELECT MIN(replacement_cost) FROM film;

-- MAX
SELECT MAX(replacement_cost) FROM film;

-- MIN & MAX 
SELECT MIN(replacement_cost), MAX(replacement_cost) FROM film;

-- AVG & ROUND
SELECT ROUND(AVG(replacement_cost)) FROM film;

SELECT ROUNd(AVG(replacement_cost), 2) FROM film;

-- SUM
SELECT SUM(replacement_cost) FROM film;

-- GROUP BY
-- 1. choose a categorical column 
-- 2. categorical column is non-continuous 

-- SELECT category_column, AGG(data_col) FROM table GROUP BY category col;

SELECT company, division, SUM(sales)
FROM finance_table 
WHERE division IN ('marketing', 'transport')
GROUP BY company, division;


