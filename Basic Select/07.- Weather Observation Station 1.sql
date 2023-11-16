/* 
Weather Observation Station 1
Query a list of CITY and STATE from the STATION table.
The STATION table is described as follows:  

FIELD 		TYPE
 ID		 NUMBER
 CITY		 VARCHAR2(21)
 STATE 	 	 VARCHAR2(2)
 LAT_N	 	 NUMBER
 LONG_W 	 NUMBER

*/

/* MYSQL SUBMISSION*/

SELECT CITY, STATE FROM STATION

/*MS SQL SERVER*/

SELECT CITY, STATE FROM STATION;
