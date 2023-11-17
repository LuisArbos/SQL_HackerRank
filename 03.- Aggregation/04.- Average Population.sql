/*
Average Population

Query the average population for all cities in CITY, rounded down to the nearest integer.

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

SELECT ROUND(AVG(POPULATION)) FROM CITY

/* MS SQL SERVER SUBMISSION*/

SELECT ROUND(AVG(POPULATION),0) FROM CITY;