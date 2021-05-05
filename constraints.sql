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



