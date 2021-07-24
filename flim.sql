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













