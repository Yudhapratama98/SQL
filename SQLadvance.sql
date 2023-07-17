#Practice Day 3
use world;
show tables;
select c.name, count(distinct Language) as jumlah_Bahasa
from country c JOIN countrylanguage l
ON c.Code = l.countrylanguage
Group by c.name;
select * from countrylanguage;

#soal 1
With jumlahpernegara as(
Select CountryCode, Count(Language) as jumlahBahasa from countrylanguage group by countryCode)
Select c.name ,jumlahBahasa from jumlahpernegara j join country c ON c.Code = j.CountryCode
Where jumlahBahasa > (Select AVG(jumlahBahasa) from jumlahpernegara)
order by jumlahBahasa Desc
limit 10;

#Soal 3
select c.continent , c.GovernmentForm , 
from country c join city ci on c.Code = ci.CountryCode


#soal 4
select SUM(ci.Population), c.continent, 
AVG(GNP),ROW_NUMBER() OVER(ORDER BY sum(c.Population) desc) as 'ranking_Populasi',
ROW_NUMBER() OVER(ORDER BY avg(GNP) desc) as'ranking_GNP'
from country c join city ci on c.capital = ci.id
group by continent
order by sum(c.Population) desc;

