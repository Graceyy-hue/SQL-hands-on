/* Problem Statement:

show the name, continent and population of all countries.

*/

--Solution:
SELECT name, continent, population FROM world





/* Problem Statement:

Show the name for the countries that have a population of at least 200 million

*/

--Solution:
SELECT name FROM world
WHERE population >= 200000000





/* Problem Statement:

Give the name and the per capita GDP for those countries with a population of at least 200 million

*/

--Solution:
SELECT name, GDP/population FROM world WHERE population>= 200000000





/* Problem Statement:

Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions

*/

--Solution:
SELECT name, population/1000000 FROM world WHERE continent='South America'





/* Problem Statement:

Show the name and population for France, Germany, Italy

*/

--Solution:
SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy')






/* Problem Statement:

Show the countries which have a name that includes the word 'United'

*/

--Solution:
SELECT name FROM world WHERE name LIKE 'United%'






/* Problem Statement:

Show the countries that are big by area or big by population. Show name, population and area

*/

--Solution:
SELECT name, population, area FROM world WHERE area > 3000000 OR population > 250000000






/* Problem Statement:

Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area. (One or Other but not both)

*/

--Solution:
SELECT name, population, area FROM world WHERE area > 3000000 XOR population > 250000000





/* Problem Statement:

Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places

*/

--Solution:
SELECT name, ROUND(population/1000000, 2), ROUND(GDP/1000000000, 2) FROM world WHERE continent='South America'






/* Problem Statement:

Show per-capita GDP for the trillion dollar countries to the nearest $1000

*/

--Solution:
SELECT name, ROUND((GDP/population), -3) FROM world WHERE GDP > 1000000000000







/* Problem Statement:

Show the name and capital where the name and the capital have the same number of characters

*/

--Solution:
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital)








/* Problem Statement:

Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word

*/

--Solution:
SELECT name, capital
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) AND name != capital









/* Problem Statement:

Find the country that has all the vowels and no spaces in its name

*/

--Solution:
SELECT name
FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %'


