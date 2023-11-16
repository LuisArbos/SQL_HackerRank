/* 
Weather Observation Station 7
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

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

SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u' OR CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U';

/*MS SQL SERVER*/

SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u' OR CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U';
