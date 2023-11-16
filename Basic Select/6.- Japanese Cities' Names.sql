/* 
Japanese Cities' Names 
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:  

FIELD 		TYPE
 ID		 NUMBER
 NAME		 VARCHAR2(17)
 COUNTRYCODE 	 VARCHAR2(3)
 DISTRICT	 VARCHAR2(20)
 POPULATION 	 NUMBER

*/

/* MYSQL SUBMISSION*/

SELECT NAME FROM CITY WHERE COUNTRYCODE = "JPN"

/*MS SQL SERVER*/

SELECT NAME FROM CITY WHERE COUNTRYCODE = "JPN";
