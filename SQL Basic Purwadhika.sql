#Jawaban Nomor Pertama
-- use sakila;
-- show tables;
-- select customer_id, amount, payment_date from payment limit 10;

-- select * from film where title like 'S%' limit 10;
#Nomor kedua

#Nomor ketiga

#Nomor keempat
-- select rating as RATING, MAX(replacement_cost) as REPLACEMENT_COST_TERTINGGI, 
-- MIN(rental_rate) as RENTAL_RATE_TERENDAH, 
-- AVG(length) as RATARATA_DURASI
-- from film
-- GROUP BY rating;

#Nomor Kelima
-- select film.title as Judul,
-- film.length as Durasyong,
-- language.name as Bahasa
-- FROM film INNER JOIN language
-- ON film.language_id = language.language_id
-- WHERE film.title LIKE '%K' LIMIT 15;

#Nomor Keenam
-- use sakila;
-- Select film.title as Judulz,
-- language.name as Bahasyong,
-- film.length as Durasyong
-- From film INNER JOIN language
-- ON film.language_id = language.language_id
-- WHERE film.title LIKE '%K'
-- limit 12;

#Nomor 7
-- select film.title,
-- actor.first_name,
-- actor.last_name
-- from film_actor
-- join film
-- ON film_actor.film_id = film.film_id
-- join actor
-- ON actor.actor_id = film_actor.actor_id
-- WHERE film_actor.actor_id = 14 ;

#Nomor 8
-- Select city, country_id
-- FROM city
-- WHERE city like '%d%' and city like '%a'
-- Order by country_id
-- Limit 10;

#Nomor 9
Select category.name as genre,
count(film.title) as banyak_film
From film
LEFT JOIN film_category
ON film.film_id = film_category.film_id
LEFT JOIN category
ON film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY banyak_film;

#nomor10
Select title, description, length, rating
From film
WHERE title like '%h' and
length > (Select AVG(length) from film)
ORDER BY rating
limit 10;




####SERIUS
#-- Nomor1
-- USE world;
-- Select COUNT(Code) as jumlah_negara from country;

-- #nomor2
-- Select Distinct Continent as Benua from country
-- Order by Continent Asc;

-- #Nomor3
-- Select Distinct Region from country
-- Where Continent Like 'Africa'
-- Order by Region Asc;

-- #nomor4
-- Select COUNT(Name) as jml , Continent from country
-- Group by Continent
-- Order by jml Desc;


-- #Nomor 5
-- select SUM(Population) , Continent from country
-- WHERE Continent Not In ('Oceania', 'Antarctica')
-- Group by Continent;

-- #Nomor 6
-- Select SUM(Population) as Jumlah, District from city
-- Where CountryCode Like 'IDN'
-- Group by District
-- ORDER BY Jumlah Desc
-- Limit 5;

-- #Nomor 7
-- Select Count(Code), Continent from country
-- Where Continent Like 'Africa'
-- Group by Continent;

-- #NOmor 8
-- Select Count(Distinct Language) from countrylanguage;

-- #Nomor 9
-- Select Sum(Population) as jumlahPopulasi, Name from country
-- Group by Name
-- Order by jumlahPopulasi Desc
-- Limit 5;

-- #Nomor 10
-- Select Name from Country
-- Where Name Like '%O' AND LENGTH(Name) = 6;


-- #Nomor 11
-- Select Name , Continent from Country
-- Where Continent like 'Europe' and Name like 'I%';

-- #Nomor 12
-- Select AVG(LifeExpectancy) as rataharapanhidup, Continent from country
-- Group by Continent
-- Order by rataharapanhidup Asc;

-- #Nomor 13
-- Select AVG(GNP) as gnp , Region from country
-- Where Continent like 'Africa'
-- Group by Region
-- Order by gnp Desc;

-- #Nomor 14
-- Select Count(Distinct Region) as jml , continent from country
-- Group by continent
-- Having jml > 3;

-- #Nomoe 15
-- Select Count(Language), CountryCode from countrylanguage
-- Where CountryCode like 'IDN';

-- Select language ,Round(Percentage) from countrylanguage
-- Where CountryCode like 'IDN'
-- Order by Percentage Desc
-- Limit 7 ;

-- #Nomoe 16
-- use employees;

-- Select AVG(salary), EXTRACT(YEAR from from_date) from salaries
-- Group by from_date
-- Order by from_date Asc;

