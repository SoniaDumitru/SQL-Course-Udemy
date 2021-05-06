-- Constrains are rules inforced on data columns on a table
-- used to prevent invalid data from enetering into database
-- accuracy and reliability of the data 

-- there are two types: column constrains & table constrains

-- COLUMN:
-- NOT NULL Constraint
-- UNIQUE Constraint 
-- CHECK Constraint (all values in the column satisfy certain condition)
-- EXCLUSION (if any two rows dont return true when using a specified operator)

-- TABLE: 
-- CHECK Condition
-- REFERENCES another column in another table
-- UNIQUE (unique among multiple column)
-- PRIMARY KEY(column_list)


-- CREATE TABLE
CREATE TABLE table_name(
    column_name TYPE column_constraint,
    column_name TYPE column_constraint,
    table_contrains table_constrains
)INHERITS existing table_table_name;

CREATE TABLE players(
    player_id SERIAL PRIMARY KEY,
    age SMALLINT NOT NULL
);

-- CREATE tables and connections (primary and foreign keys attached)
CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
);

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);

CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
);

-- INSERT 
INSERT INTO account(username, password, email, created_on)
VALUES ('Jose', 'password', 'jose@mail.com', CURRENT_TIMESTAMP);

INSERT INTO job(job_name)
VALUES ('Austronaut');

INSERT INTO job(job_name)
VALUES ('President');

INSERT INTO account_job(user_id, job_id, hire_date)
VALUES(1,1,CURRENT_TIMESTAMP);


-- UPDATE 
UPDATE account 
SET last_login = created_on;

UPDATE account
SET last_login = CURRENT_TIMESTAMP 
RETURNING email, created_on, last_login;

-- UPDATE WITH THE RESULTS FROM OTHER TABLE
UPDATE account_job
SET hire_date = account.created_on
FROM account 
WHERE account_job.user_id = account.user_id;

-- DELETE ROWS
DELETE FROM job 
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name;

-- ALTER 
-- RENAME TABLE
ALTER TABLE information 
RENAME TO new_info;

-- RENAME COLUMN
ALTER TABLE new_info
RENAME COLUMN person TO people;

-- REMOVE A CONSTRAINT 
ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;

-- DROP COLUMN 
ALTER table new_info
DROP COLUMN people;

ALTER table new_info
DROP COLUMN IF EXISTS people;

-- Constraints when inserting into a table
CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL, 
    birthdate DATE CHECK (birthdate > '1900-01-01'),
    hire_date DATE CHECK (hire_date > birthdate),
    salary INTEGER CHECK (salary > 0)
);

INSERT INTO employees(
	first_name,
	last_name,
	birthdate,
	hire_date,
	salary
)
VALUES (
	'Sonia', 'Dumitru', '1899-11-03', '2010-01-01', 100
); -- ERROR:  new row for relation "employees" violates check constraint "employees_birthdate_check"