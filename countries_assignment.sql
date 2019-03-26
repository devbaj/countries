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
JOIN cities ON countries.id = cities.country_id AND countries.name = 'Mexico' AND cities.population < 500000
ORDER BY cities.population DESC;