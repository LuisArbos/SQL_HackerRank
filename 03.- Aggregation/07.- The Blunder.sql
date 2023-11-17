/*
The Blunder

Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's

key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), and round it up to the next integer.

Input Format

The EMPLOYEES table is described as follows:

COLUMN 		TYPE	
 ID		 INTEGER
 NAME 		 STRING
 SALARY		 INTEGER

Note: Salary is per month. 

*/

/* MYSQL SUBMISSION */

SELECT CEIL(AVG(SALARY)-(AVG(REPLACE(SALARY, "0", '')))) FROM EMPLOYEES

/* MS SQL SERVER SUBMISSION*/

SELECT CEILING(AVG(CAST(SALARY AS DECIMAL(18, 2))) - AVG(CAST(REPLACE(SALARY, '0', '') AS DECIMAL(18, 2)))) FROM EMPLOYEES;
