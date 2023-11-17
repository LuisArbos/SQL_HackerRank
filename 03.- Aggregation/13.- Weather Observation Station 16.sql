/*
Weather Observation Station 16

Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.778'. Round your answer to 4 decimal places.

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

SELECT ROUND(LAT_N,4) FROM STATION WHERE LAT_N > 38.7780 ORDER BY LAT_N LIMIT 1

/* MS SQL SERVER SUBMISSION*/

SELECT TOP 1 CAST(LAT_N AS DECIMAL(18,4)) FROM STATION WHERE LAT_N > 38.7780 ORDER BY LAT_N;
