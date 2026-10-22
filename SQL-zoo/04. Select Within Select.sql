/* Problem Statement:

List each country name where the population is larger than that of 'Russia'.

*/

--Solution:
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')





/* Problem Statement:

Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

*/

--Solution:
SELECT name FROM world WHERE continent ='Europe' AND (gdp/population) > (SELECT gdp/population FROM world WHERE name='United Kingdom')






/* Problem Statement:

List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.

*/

--Solution:
SELECT name, continent 
FROM world 
WHERE continent IN (SELECT continent FROM world WHERE name IN ('Australia', 'Argentina'))
ORDER BY name





/* Problem Statement:

Which country has a population that is more than United Kingdom but less than Germany? Show the name and the population.

*/

--Solution:
SELECT name, population FROM world WHERE population > (SELECT population FROM world WHERE name='United Kingdom') AND population < (SELECT population FROM world WHERE name='Germany')





/* Problem Statement:

Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.

*/

--Solution:
SELECT name, CONCAT(ROUND(100*population/(SELECT population FROM world WHERE name='Germany'), 0), "%") AS percentage
FROM world
WHERE continent='Europe' 






/* Problem Statement:

Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values)

*/

--Solution:
SELECT name FROM world WHERE gdp > ALL(SELECT gdp FROM world WHERE continent='Europe' AND gdp>0)







/* Problem Statement:

Find the largest country (by area) in each continent, show the continent, the name and the area:

*/

--Solution:
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)






/* Problem Statement:

List each continent and the name of the country that comes first alphabetically.

*/

--Solution:
SELECT continent, name FROM world x WHERE name <= ALL(SELECT name FROM world y WHERE x.continent=y.continent)







/* Problem Statement:

Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, continent and population.

*/

--Solution:
SELECT name, continent, population FROM world x WHERE 25000000 >= ALL(SELECT population FROM world y WHERE x.continent=y.continent AND y.population>0)






/* Problem Statement:

Some countries have populations more than three times that of all of their neighbours (in the same continent). Give the countries and continents

*/

--Solution:
SELECT name, continent FROM world x WHERE population > ALL(SELECT 3*population AS population FROM world y WHERE y.continent=x.continent AND y.name<>x.name AND y.population>0)
