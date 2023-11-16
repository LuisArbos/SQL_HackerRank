/* 
Weather Observation Station 10
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

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

SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) NOT IN ('a','e','i','o','u','A','E','I','O','U')

/*MS SQL SERVER*/

SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) NOT IN ('a','e','i','o','u','A','E','I','O','U');
