--1--

SELECT  world.countries.name AS País, world.languages.language AS Lenguaje, world.languages.percentage As "%"
FROM world.languages
JOIN world.countries ON world.languages.country_id = world.countries.id
WHERE world.languages.language = "Slovene"
ORDER BY world.languages.percentage DESC;

--2--

SELECT countries.name AS País, COUNT(cities.name) AS Cantidad_Ciudades
FROM cities
JOIN countries ON cities.country_id = countries.id
GROUP BY countries.name
ORDER BY Cantidad_Ciudades desc;

--3--

SELECT cities.name AS Ciudad, cities.population AS Poblacion FROM cities
JOIN countries ON cities.country_id = countries.id
WHERE countries.name = "Mexico" AND cities.population > 500000
ORDER BY cities.population DESC;

--4--

SELECT countries.name AS País, languages.language AS Lenguaje, languages.percentage AS "%"
FROM languages
LEFT JOIN countries ON languages.country_id = countries.id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

--5--

SELECT countries.name AS País, countries.surface_area As Area, countries.population AS Población 
FROM countries
WHERE countries.surface_area < 501 AND countries.population > 100000;

--6--

SELECT countries.name AS País, countries.government_form AS Forma_Gobierno, 
countries.capital AS Capital, countries.life_expectancy AS Expectativa_Vida
FROM countries
WHERE countries.government_form = 'Constitutional Monarchy' AND
countries.capital > 200 AND
countries.life_expectancy > 75;

--7--

SELECT countries.name AS País, cities.name AS Ciudad, cities.district AS Distrito, 
cities.population AS Población
FROM cities
JOIN countries on countries.id = cities.country_id
WHERE countries.name = "Argentina" AND
cities.district = "Buenos Aires" AND
cities.population > 500000;

--8--

SELECT countries.region AS Región, COUNT(countries.name) AS Numero_Ciudades
FROM countries
GROUP BY countries.region
ORDER BY Numero_Ciudades DESC;



