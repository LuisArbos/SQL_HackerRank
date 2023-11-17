/*
Revising Aggregation - The Count Function

Query a count of the number of cities in CITY having a Population larger than 100,000. 

CITY

FIELD 		TYPE
 ID		 NUMBER
 NAME		 VARCHAR2(17)
 COUNTRYCODE	 VARCHAR2(3)
 DISTRICT	 VARCHAR2(20)
 POPULATION	 NUMBER

*/

/* MYSQL SUBMISSION */

SELECT COUNT(name) FROM CITY WHERE population > 100000

/* MS SQL SERVER SUBMISSION*/

SELECT COUNT(name) FROM CITY WHERE population > 100000;
