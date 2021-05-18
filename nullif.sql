-- NULLIF function takes 2 inputs and return NULL if both are equal, 
-- otherwise returns the first argument passed 

NULLIF(10, 10) -- returns NULL
-- very useful when a null value would cause an error/unwanted result

-- Calculate ratio between male 'B' and female 'A'
SELECT (
	SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
	SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END)  
) AS department_ration
FROM depts;

-- If there are null values we use NULLIF
SELECT (
	SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
	NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END), 0)  
) AS department_ration
FROM depts;