USE world;

-- 1
SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id and languages.language = 'Slovene';

-- 2
SELECT countries.name, count(cities.id)
FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY countries.name
ORDER BY COUNT(cities.id) DESC;

-- 3
SELECT cities.name, cities.population
FROM countries
JOIN cities ON countries.id = cities.country_id AND countries.name = 'Mexico' AND cities.population > 500000
ORDER BY cities.population DESC;

-- 4
SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id AND languages.percentage > 89
ORDER BY languages.percentage DESC; -- Not sure if this has fully accomplished the task, need clarification on question

-- 5
SELECT countries.name, countries.surface_area, countries.population
FROM countries
WHERE countries. surface_area < 501 AND countries.population > 100000;

-- 6
SELECT countries.name, countries.government_form, countries.life_expectancy
FROM countries
WHERE countries.government_form = "Constitutional Monarchy" AND countries.capital > 200 AND countries.life_expectancy > 75;

-- 7
select countries.name, cities.name, cities.district, cities.population
FROM countries
JOIN cities ON countries.id = cities.country_id AND cities.district = "Buenos Aires" AND cities.population > 500000;

-- 8
SELECT countries.region, COUNT(countries.name) AS "countries"
FROM countries
group by(countries.region)
ORDER BY countries DESC;