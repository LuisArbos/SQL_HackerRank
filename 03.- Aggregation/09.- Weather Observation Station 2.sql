/*
Weather Observation Station 2

Query the following two values from the STATION table:

    The sum of all values in LAT_N rounded to a scale of 

decimal places.
The sum of all values in LONG_W rounded to a scale of

    decimal places.

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

SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2) FROM STATION

/* MS SQL SERVER SUBMISSION*/

SELECT CAST(SUM(LAT_N) AS DECIMAL(18,2)), CAST(SUM(LONG_W) AS DECIMAL(18,2)) FROM STATION;

