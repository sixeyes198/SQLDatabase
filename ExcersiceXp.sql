-- CREATE TABLE items(
-- items_id SERIAL PRIMARY KEY,
-- item_name VARCHAR (50)NOT NULL,
-- item_price BIGINT NOT NULL
-- )
-- SELECT * FROM items
-- INSERT INTO items (item_name, item_price)
-- VALUES ('Small Desk',100)

-- INSERT INTO items (item_name, item_price)
-- VALUES 
-- ('Large desk',300),
-- ('Fan',80)

-- SELECT * FROM items



-- CREATE TABLE customers(
-- 	customers_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR (50) NOT NULL,
-- 	last_name VARCHAR (100) NOT NULL
-- )
-- SELECT * FROM customers

-- INSERT INTO customers (first_name,last_name)
-- VALUES 
-- ('Greg','Jones'),
-- ('Sandra','Jones'),
-- ('Scott','Scott'),
-- ('Trevor','Green'),
-- ('Melanie','Johnson')

-- Use SQL to fetch the following data from the database:
-- 1. All the items.
-- SELECT *FROM items
-- 2. All the items with a price above 80 (80 not included).
-- SELECT * FROM items WHERE item_price > 80
--  3. All the items with a price below 300. (300 included)
-- SELECT * FROM items WHERE item_price <= 300
-- 4. All customers whose last name is ‘Smith’ (What will be your outcome?).
-- SELECT * FROM customers WHERE last_name = 'Smith'
-- 0 retrieve because it doesnt exist
--  5. All customers whose last name is ‘Jones’.
-- SELECT * FROM customers WHERE last_name = 'Jones'
-- 6. All customers whose firstname is not ‘Scott’.
-- SELECT * FROM customers WHERE first_name != 'Scott'

