-- Excersice 
-- 1. All items, ordered by price (lowest to highest).
-- SELECT * FROM items ORDER BY item_price   

-- 2. Items with a price above 80 (80 included), ordered by price (highest to lowest).
-- SELECT * FROM items WHERE item_price >= 80
-- 3. The first 3 customers in alphabetical order of the first name (A-Z) – exclude the primary key column from the results.
-- SELECT  first_name,last_name FROM customers WHERE customers_id BETWEEN 1 and 3

-- 4. All last names (no other columns!), in reverse alphabetical order (Z-A)

-- SELECT last_name FROM customers ORDER BY first_name ASC 