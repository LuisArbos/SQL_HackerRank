/* 
Weather Observation Station 8
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:
FIELD 		TYPE
 ID		 NUMBER
 CITY		 VARCHAR2(21)
 STATE 	 	 VARCHAR2(2)
 LAT_N	 	 NUMBER
 LONG_W 	 NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

/* MYSQL SUBMISSION*/

SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN ('A','E','I','O','U','a','e','i','o','u') AND RIGHT(CITY, 1) IN ('A','E','I','O','U','a','e','i','o','u')

/*MS SQL SERVER*/

SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN ('A','E','I','O','U','a','e','i','o','u') AND RIGHT(CITY, 1) IN ('A','E','I','O','U','a','e','i','o','u');
