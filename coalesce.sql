-- COALESCE useful when quering a table that contains null values and substituting it with another value

SELECT item,(price - COALESCE(discount,0)) AS final FROM table;