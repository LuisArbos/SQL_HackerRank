/*
Weather Observation Station 13
 
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater 38.7880 than and less than 137.2345. Truncate your answer to decimal places.

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

SELECT TRUNCATE(SUM(LAT_N),4) FROM STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345

/* MS SQL SERVER SUBMISSION*/

SELECT CAST(SUM(LAT_N) AS DECIMAL(18, 4))
FROM STATION 
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;
