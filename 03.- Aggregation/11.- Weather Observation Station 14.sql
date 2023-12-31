/*
Weather Observation Station 14

Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to decimal places.

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

SELECT TRUNCATE(LAT_N,4) FROM STATION WHERE LAT_N < 137.2345 ORDER BY LAT_N DESC LIMIT 1

/* MS SQL SERVER SUBMISSION*/

SELECT TOP 1 CAST(LAT_N AS DECIMAL(18,4)) FROM STATION WHERE LAT_N < 137.2345 ORDER BY LAT_N DESC;