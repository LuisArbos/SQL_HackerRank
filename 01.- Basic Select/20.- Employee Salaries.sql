/* 
Revising the Select Query I
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than per month who have been employees for less than

months. Sort your result by ascending employee_id.

Input Format

The Employee table containing employee data for a company is described as follows: 

FIELD 		TYPE
 EMPLOYEE_ID	 INTEGER
 NAME		 STRING
 MONTHS 	 INTEGER
 SALARY		 INTEGER

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

*/

/* MYSQL SUBMISSION*/

SELECT NAME FROM EMPLOYEE WHERE SALARY > 2000 AND MONTHS < 10 ORDER BY EMPLOYEE_ID ASC

/*MS SQL SERVER*/

SELECT NAME FROM EMPLOYEE WHERE SALARY > 2000 AND MONTHS < 10 ORDER BY EMPLOYEE_ID ASC;
