/*
Top Earners

We define an employee's total earnings to be their monthly worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as

space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows: 

COLUMN 		TYPE
 EMPLOYEE_ID	 INTEGER
 NAME		 STRING
 MONTHS		 INTEGER
 SALARY		 INTEGER

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.
*/

/* MYSQL SUBMISSION */

SELECT SALARY*MONTHS as TSALARY, COUNT(SALARY*MONTHS) AS CTSALARY FROM EMPLOYEE GROUP BY TSALARY ORDER BY TSALARY DESC LIMIT 1

/* MS SQL SERVER SUBMISSION*/

SELECT TOP 1 (SALARY*MONTHS) AS TSALARY, COUNT(SALARY*MONTHS) AS CTSALARY FROM EMPLOYEE GROUP BY SALARY*MONTHS ORDER BY TSALARY DESC;
