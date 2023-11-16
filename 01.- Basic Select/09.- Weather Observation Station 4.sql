/* 
Weather Observation Station 4
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows: 

FIELD 		TYPE
 ID		 NUMBER
 NAME		 VARCHAR2(17)
 COUNTRYCODE 	 VARCHAR2(3)
 DISTRICT	 VARCHAR2(20)
 POPULATION 	 NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude.

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns 1, because total number of records - number of unique city names = 3 - 2 = 1.

*/

/* MYSQL SUBMISSION*/

SELECT (COUNT(CITY) - COUNT(DISTINCT CITY)) FROM STATION 

/*MS SQL SERVER*/

SELECT (COUNT(CITY) - COUNT(DISTINCT CITY)) FROM STATION;
