/*
Weather Observation Station 18

Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.

a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).

Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

Input Format

The STATION table is described as follows:

FIELD		TYPE
 ID		 NUMBER
 CITY		 VARCHAR2(21)
 STATE		 VARCHAR2(2)
 LAT_N		 NUMBER
 LONG_W		 NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude. 

*/

/* MYSQL SUBMISSION */

SELECT CAST(((MAX(LAT_N)-MIN(LAT_N))+(MAX(LONG_W)-MIN(LONG_W))) AS decimal (10,4)) FROM STATION 

/* MS SQL SERVER SUBMISSION*/

SELECT CAST(((MAX(LAT_N)-MIN(LAT_N))+(MAX(LONG_W)-MIN(LONG_W))) AS decimal (10,4)) FROM STATION ;