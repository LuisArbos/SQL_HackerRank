/*
Weather Observation Station 15

Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

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

SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N<137.2345 ORDER BY LAT_N DESC LIMIT 1

/* MS SQL SERVER SUBMISSION*/

SELECT TOP 1 CAST(LONG_W AS DECIMAL(18,4)) FROM STATION WHERE LAT_N<137.2345 ORDER BY LAT_N DESC;