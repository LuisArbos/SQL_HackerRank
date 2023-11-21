/*
The Report

You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

COLUMN 		TYPE
 ID		 INTEGER
 NAME		 STRING
 MARKS		 INTEGER

Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.

Note

Print "NULL"  as the name if the grade is less than 8.

*/

/* MYSQL SUBMISSION */

SELECT IF(GRADE < 8, "NULL", NAME), GRADE, MARKS FROM GRADES CROSS JOIN STUDENTS WHERE STUDENTS.MARKS >= GRADES.MIN_MARK AND STUDENTS.MARKS <= GRADES.MAX_MARK ORDER BY GRADE DESC, NAME

/* MS SQL SERVER SUBMISSION*/

SELECT CASE WHEN GRADE < 8 THEN 'NULL' ELSE NAME END AS StudentName, GRADE, MARKS
FROM GRADES CROSS JOIN STUDENTS WHERE STUDENTS.MARKS >= GRADES.MIN_MARK AND STUDENTS.MARKS <= GRADES.MAX_MARK ORDER BY GRADE DESC, NAME;
