-- Exercise 1: DVD Rental

--1.  Get a list of all the languages, from the language table.
-- SELECT * FROM language

-- 2. Get a list of all films joined with their languages – select the following details : film title, description, and language name.
-- SELECT film.title,film.description,film.language_id , language.name
-- FROM film
-- INNER JOIN language
-- ON film.language_id = language.language_id

--3. Get all languages, even if there are no films in those languages – select the following details : film title, description, and language name.
-- SELECT * FROM language
-- LEFT JOIN film ON 
-- film.language_id = language.language_id

-- 4. Create a new table called new_film with the following columns : id, name. Add some new films to the table.
--  CREATE TABLE new_film( 
--  ID SERIAL PRIMARY KEY ,
--  NAME VARCHAR(100) NOT NULL
--  )
-- INSERT INTO new_film(name)
-- VALUES ('Titanic'),('Batman'),('The matrix')

--5. Create a new table named...customer_review...
-- CREATE TABLE customer_review (
-- 	review_id SERIAL PRIMARY KEY NOT NULL,
-- 	film_id INT NOT NULL,
-- 	language_id INT NOT NULL,
-- 	title VARCHAR (100)NOT NULL,
-- 	score INT NOT NULL,
-- 	review_text TEXT,
-- 	last_update TIMESTAMP DEFAULT current_timestamp,
-- 	CONSTRAINT fk_language_id FOREIGN KEY (language_id) REFERENCES language(language_id),
-- 	CONSTRAINT fk_film_id FOREIGN KEY (film_id) REFERENCES new_film(id) ON DELETE CASCADE,
-- 	CONSTRAINT score_value CHECK (score > 0 AND score <= 10)
-- )
-- SELECT * FROM customer_review
-- INSERT INTO customer_review (film_id, language_id,title,score,review_text)
-- VALUES(1,1, 'Romance',7,'Only because i watched this film with my mother in cinema when i was a child, this gets a 7...'),
-- (2,1, 'Action,Drama',8,'All of them were alright , i liked the older ones better'),
-- (3,1, 'Action',9.5,'Greatest 3 movies thrillogy of all time, the 4 dont count in my eyes...') RETURNING *
-- DELETE FROM customer_review WHERE (film_id=5) OR (film_id=6) RETURNING *

--Second excersice 

-- SELECT * FROM film INNER JOIN language ON film.language_id = language.language_id WHERE (title='Airport Pollock') 
-- UPDATE film SET language_id=3 WHERE (title = 'Airport Pollock') 
-- SELECT * FROM customer WHERE (first_name='Tom')
-- INSERT INTO customer(store_id,address_id,first_name,last_name)VALUES (1,1,'Tom','Bradey')
-- DROP TABLE customer_review
-- SELECT * FROM rental WHERE (return_date IS NULL)
-- -- SELECT inventory.film_id,film.title,film.replacment_cost FROM inventory INNER JOIN flim ON inventory.film_id=film.film_id
-- SELECT * FROM rental 
-- INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
-- LEFT JOIN film ON inventory.film_id=film.film_id
-- WHERE rental.return_date IS NULL
-- ORDER BY film.replacement_cost DESC
-- LIMIT 30

-- SELECT * FROM film_actor 
-- 	INNER JOIN film ON film.film_id=film_actor.film_id
-- WHERE (actor_id=(SELECT actor_id 
-- 				 FROM actor 
-- 				 WHERE ( first_name='Penelope')
-- 				 AND (last_name='Monroe')
-- 				 AND film.fulltext @@ to_tsquery('english','sumo')
-- ))

-- SELECT * FROM film
-- INNER JOIN film_category ON film.film_id=film_category.film_id
-- INNER JOIN category ON category.category_id=film_category.category_id
-- WHERE length < 60 AND rating ='R' AND category.name='Documentary'

SELECT * FROM inventory
INNER JOIN film ON film.film_id=inventory.film_id
INNER JOIN rental ON rental.inventory_id=inventory.inventory_id
INNER join customer ON customer.customer_id=rental.customer_id
WHERE customer.first_name='Matthew' 
AND customer.last_name='Mahan' 
-- AND film.rental_rate > 4 
-- AND rental.return_date >'2005-07-28'
-- AND rental.return_date <'2005-08-1'
AND (film.title ILIKE '%boat%' OR film.description ILIKE '%boat%')
ORDER BY film.replacement_cost DESC
LIMIT 1