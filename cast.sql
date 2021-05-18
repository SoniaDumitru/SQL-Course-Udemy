-- CAST operator let's you convert from one data type into another

-- Syntax for CAST function 
SELECT CAST('5' AS INTEGER)

-- PostgresSQL CAST operator
SELECT '5'::INTEGER

-- How many digits does inventory_id have
SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental
