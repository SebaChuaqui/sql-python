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
SELECT actor.actor_id AS ID, actor.first_name AS Nombre, actor.last_name AS Apellido,
film.title AS Titulo, film.description AS Descripcion, film.special_features AS Estreno
FROM actor
JOIN film ON film.film_id = actor_id
WHERE actor_id = 5;

--4--
SELECT customer.first_name AS Nombre, customer.last_name AS Apellido, customer.email AS Correo,
address.address AS Direccion
FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE customer.store_id = 1 AND (address.city_id = 1 OR address.city_id = 42 OR address.city_id = 312 OR
address.city_id = 459);









