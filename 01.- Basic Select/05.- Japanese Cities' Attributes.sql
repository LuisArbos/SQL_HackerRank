/* 
Japanese Cities' Attributes
Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

The CITY table is described as follows:  

FIELD 		TYPE
 ID		 NUMBER
 NAME		 VARCHAR2(17)
 COUNTRYCODE 	 VARCHAR2(3)
 DISTRICT	 VARCHAR2(20)
 POPULATION 	 NUMBER

*/

/* MYSQL SUBMISSION*/

SELECT * FROM CITY WHERE COUNTRYCODE = "JPN"

/*MS SQL SERVER*/

SELECT * FROM CITY WHERE COUNTRYCODE = "JPN";
