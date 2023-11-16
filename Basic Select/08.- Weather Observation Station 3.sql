/* 
Weather Observation Station 3
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:

FIELD 		TYPE
 ID		 NUMBER
 CITY		 VARCHAR2(21)
 STATE 	 	 VARCHAR2(2)
 LAT_N	 	 NUMBER
 LONG_W 	 NUMBER

*/

/* MYSQL SUBMISSION*/

SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0 

/*MS SQL SERVER*/

SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0 ;
