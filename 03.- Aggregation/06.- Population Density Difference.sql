/*
Population Density Difference

Query the difference between the maximum and minimum populations in CITY.

Input Format

The CITY table is described as follows: 

CITY

FIELD 		TYPE
 ID		 NUMBER
 NAME		 VARCHAR2(17)
 COUNTRYCODE	 VARCHAR2(3)
 DISTRICT	 VARCHAR2(20)
 POPULATION	 NUMBER

*/

/* MYSQL SUBMISSION */

SELECT MAX(POPULATION)-MIN(POPULATION) FROM CITY

/* MS SQL SERVER SUBMISSION*/

SELECT MAX(POPULATION)-MIN(POPULATION) FROM CITY;
