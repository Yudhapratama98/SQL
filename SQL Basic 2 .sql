-- #NOMER 1 Advance
-- use sakila;

-- WITH avg_rent_durat as (
-- Select AVG(rental_duration) as avg_duration
-- from sakila.film),

-- Stage1 as (
-- Select c.name, sum(f.rental_duration) as total_rental_duration
-- from sakila.film f
-- join sakila.film_category fc
-- ON fc.film_id = f.film_id
-- join sakila.category c
-- ON c.category_id = fc.category_id
-- WHERE f.rental_duration <= (Select avg_duration from avg_rent_durat)
-- Group by 1)

-- Select name, 
-- 	total_rental_duration, total_rental_duration,
-- 	SUM(total_rental_duration) over (order by total_rental_duration DESC 
-- 	ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as cumulative_sum, 
-- 	AVG(total_rental_duration) OVER (ORDER BY total_rental_duration DESC
-- 	ROWS BETWEEN UNBOUNDED PRECEDING AND Current row) as moving_avg
-- from Stage1
-- limit 10;

-- #Nomor 2 Advance
-- With jumlahFilmCategory as (
-- Select f.name,
-- count(fc.film_id) as total_film

-- from sakila.category f
-- JOIN sakila.film_category fc
-- 	ON fc.category_id = f.category_id
-- JOIN sakila.film f2
-- 	ON f2.film_id = fc.film_id
-- Group by 1),

-- Stage1 AS (
-- Select name, total_film,
-- Rank() OVER (Order by total_film DESC) as rank_count
-- from jumlahFilmCategory)

-- Select f2.rating, AVG(f2.rental_duration) AS avg_rentalDuration
-- from sakila.category f
-- join sakila.film_category fc
-- 	ON fc.category_id = f.category_id
-- join sakila.film f2
-- 	ON f2.film_id = fc.film_id
-- where f.name in (select name from Stage1 Where rank_count <= 3)
-- group by 1
-- order by 2 desc;


#Practice day 2
use world;
show tables;
select * from countrylanguage;

#Nomor1
Select c.Name Negara, c.GNP GDP
from country c JOIN countrylanguage l
ON c.Code = l.CountryCode
WHERE l.language like 'English' and l.IsOfficial like 'T' and l.Percentage > 50
Order by c.GNP Desc
limit 5;

#Nomor2
Select c.Name, l.percentage
from country c JOIN countrylanguage l
ON c.Code = l.CountryCode
WHERE l.language like 'English' and l.IsOfficial like 'T' and l.Percentage > 50
Order by l.percentage Desc
limit 7;

#nomor 3
Select c.Name Negara, ci.Name Kota, ci.Population
from country c JOIN city ci
ON c.Code = ci.CountryCode
Order by ci.Population Desc
limit 10;

#Nomor 4
Select c.Name Negara, ci.District Provinsi, ci.Name Kota, ci.Population
from country c JOIN city ci
ON c.Code = ci.CountryCode
WHERE c.Code = 'IDN'
Order by ci.Population Desc
limit 10;

#NOmoe 5
select Name Nama , Continent Benua, LifeExpectancy angka_harapan_hidup, GNP from country
where Continent like 'Asia' and LifeExpectancy > (Select AVG(LifeExpectancy) from country where Continent = 'Europe')
Order by LifeExpectancy Desc;

#Nomor 6
Select c.Name Negara, ci.Name IbuKota, ci.Population PopulasiKota, ci.Population, c.GNP
from country c JOIN city ci
ON c.Code = ci.CountryCode and c.Capital = ci.ID
WHERE Region = 'Southeast Asia'
Order by c.Name;

#Nomor 7
Select c.Name Negara, ci.Name IbuKota, ci.Population PopulasiKota, ci.Population, c.GNP
from country c JOIN city ci
ON c.Code = ci.CountryCode and c.Capital = ci.ID
WHERE c.Name = 'Netherlands';

#Nomor 8
Select c.Name Negara, l.percentage
from country c 
JOIN countrylanguage l ON l.countryCode = c.Code
JOIN city ci
ON c.Code = ci.CountryCode and c.Capital = ci.ID
WHERE l.language = 'Spanish' and l.IsOfficial = 'T'
Order by l.percentage Desc
limit 10;


#Nomor 9
Select c.Name Negara, ci.Name IbuKota, ci.Population PopulasiKota, ci.Population, c.GNP, l.language
from country c 
JOIN countrylanguage l ON l.countryCode = c.Code
JOIN city ci
ON c.Code = ci.CountryCode and c.Capital = ci.ID
WHERE c.Name = 'Indonesia' and l.IsOfficial = 'T';

#nomor 10
-- WITH europe_only As(
-- select c.Continent, Count(Distinct c.Code) as jumlah_negara
-- from country c 
-- JOIN countrylanguage l ON l.countryCode = c.Code
-- JOIN city ci
-- ON c.Code = ci.CountryCode and c.Capital = ci.ID
-- WHere c.continent = 'Europe'
-- Group by C.Continent)
-- select * from europe_only;

Select c.Continent, Count(Distinct c.Code) as jumlah_negara
from country c 
JOIN countrylanguage l ON l.countryCode = c.Code
JOIN city ci
ON c.Code = ci.CountryCode and c.Capital = ci.ID
Group by c.Continent
Order by jumlah_negara desc
Limit 3;

-- Having jumlah_negara > (select Continent, Count(Distinct Code)
-- from country 
-- Where c.continent = 'Europe'
-- Group by C.Continent);

#Select 11
Select Distinct c.Name, c.GNP
from country c 
JOIN countrylanguage l ON l.countryCode = c.Code
JOIN city ci
ON c.Code = ci.CountryCode and c.Capital = ci.ID
Where c.Continent = 'Asia' and c.GNP > (Select AVG(GNP) from Country where Continent = 'Europe')
Order by GNP Desc;

#Select 12
select c.continent benua, count(Distinct c.Region) as jumlah_region
from country c 
JOIN city ci
ON c.Code = ci.CountryCode and c.Capital = ci.ID
Where continent = '%A';

select * from country;














