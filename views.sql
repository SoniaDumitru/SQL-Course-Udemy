-- A view is a database object, like a virtual table
CREATE VIEW customer_info AS
SELECT first_name, last_name, address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

-- Update a view
CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name, address, district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

-- See that view created
SELECT * FROM customer_info;

-- Remove posgresql view
DROP VIEW IF EXISTS customer_info;

-- Rename the existing view
ALTER VIEW customer_info TO c_info;