use sakila;

--1--
select customer.first_name AS Nombre, customer.last_name AS Apellido, 
customer.email AS Correo, address.address AS Direccion
from customer
join address on customer.address_id = address.address_id
where address.city_id = 312;

--2--
SELECT film.film_id AS ID, film.title AS Titulo, film.description AS Descripcion,
film.release_year AS Estreno, film.rating AS Calificacion, 
film.special_features AS Caracteristicas, category.name AS Nombre
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Comedy'
ORDER BY film.film_id ASC;

--3--
SELECT film_actor.actor_id AS 'Actor ID', CONCAT_WS(" ", actor.first_name, actor.last_name) AS 'Nombre', 
film.title AS 'Titulo', film.description AS 'Descripcion', 
film.release_year AS 'Estreno' FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE actor.actor_id = 5;

--4--

SELECT customer.store_id AS 'Tienda', address.city_id AS 'Ciudad', 
CONCAT_WS(" ", customer.first_name, customer.last_name) AS 'Nombre', customer.email AS 'Correo',
address.address AS 'Direccion'FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE customer.store_id = 1 AND address.city_id IN (1, 42,312,459);

--5--

SELECT film.title AS 'Titulo', film.description AS 'Descripcion', film.release_year AS 'Estreno',
film.rating AS 'Calificacion', film.special_features AS 'Caracteristicas' FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
WHERE film_actor.actor_id = 15 AND film.rating = 'G' AND 
film.special_features LIKE('%Behind the Scenes');




















