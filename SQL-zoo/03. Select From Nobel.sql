/* Problem Statement:

Show Nobel prizes for 1950

*/

--Solution:
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950



/* Problem Statement:

Show who won the 1962 prize for literature

*/

--Solution:
SELECT winner
FROM nobel
WHERE yr = 1962 AND subject = 'Literature'



/* Problem Statement:

Show the year and subject that won 'Albert Einstein' his prize.

*/

--Solution:
SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein'




/* Problem Statement:

Give the name of the 'Peace' winners since the year 2000, including 2000.

*/

--Solution:
SELECT winner FROM nobel WHERE subject ='Peace' AND yr >= 2000




/* Problem Statement:

Show all details (yr, subject, winner) of the literature prize winners for 1980 to 1989 inclusive.

*/

--Solution:
SELECT * FROM nobel WHERE subject = 'literature' AND yr BETWEEN 1980 AND 1989




/* Problem Statement:

Show all details of the presidential winners:

Theodore Roosevelt
Thomas Woodrow Wilson
Jimmy Carter
Barack Obama

*/

--Solution:
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Barack Obama',
                  'Thomas Woodrow Wilson', 'Jimmy Carter')




/* Problem Statement:

Show the winners with first name John

*/

--Solution:
SELECT winner FROM nobel WHERE winner LIKE 'John%'




/* Problem Statement:

Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984.

*/

--Solution:
SELECT yr, subject, winner FROM nobel WHERE (subject='Physics' AND yr=1980) OR (subject='Chemistry' AND yr=1984)




/* Problem Statement:

Show the year, subject, and name of winners for 1980 excluding chemistry and medicine

*/

--Solution:
SELECT yr, subject, winner FROM nobel WHERE yr=1980 AND subject NOT IN('Chemistry', 'Medicine')





/* Problem Statement:

Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)

*/

--Solution:
SELECT yr, subject, winner FROM nobel WHERE (subject ='Medicine' AND yr<1910) OR (subject='Literature' AND yr>=2004)





/* Problem Statement:

Find all details of the prize won by PETER GRÜNBERG

*/
,
--Solution:
SELECT * FROM nobel WHERE winner='PETER GRÜNBERG'





/* Problem Statement:

Find all details of the prize won by EUGENE O'NEILL

*/

--Solution:
SELECT * FROM nobel WHERE winner="EUGENE O'NEILL"






/* Problem Statement:

List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

*/

--Solution:
SELECT winner, yr, subject FROM nobel WHERE winner LIKE 'SIR%' ORDER BY yr DESC, winner ASC





/* Problem Statement:

Show the 1984 winners and subject ordered by subject and winner name; but list chemistry and physics last.

*/

--Solution:
SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'), subject,winner




