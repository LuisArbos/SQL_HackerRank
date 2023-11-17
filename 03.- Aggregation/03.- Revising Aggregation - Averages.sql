/*
Revising Aggregation - Averages

Query the average population of all cities in CITY where District is California. 

CITY

FIELD 		TYPE
 ID		 NUMBER
 NAME		 VARCHAR2(17)
 COUNTRYCODE	 VARCHAR2(3)
 DISTRICT	 VARCHAR2(20)
 POPULATION	 NUMBER

*/

/* MYSQL SUBMISSION */

SELECT AVG(population) FROM CITY WHERE district = "California"

/* MS SQL SERVER SUBMISSION*/

SELECT AVG(population) FROM CITY WHERE district = "California";
