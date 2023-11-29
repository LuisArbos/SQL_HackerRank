/*
SQL Project Planning

You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.

COLUMN 		TYPE
 Task_ID	 Integer
 Start_Date	 Date
 End_Date 	 Date

If the End_Date of the tasks are consecutive, then they are part of the same project. Samantha is interested in finding the total number of different projects completed.

Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the start date of the project.

*/

/* MYSQL SUBMISSION */
WITH CTE AS(
    SELECT Start_Date, ROW_NUMBER() OVER(ORDER BY Start_Date) AS num1 FROM Projects WHERE Start_Date NOT IN (SELECT end_date FROM Projects)),
CTE2 AS(
    SELECT End_Date, ROW_NUMBER() OVER(ORDER BY End_Date) AS num2 FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects))
SELECT CTE.Start_Date, CTE2.End_Date FROM CTE JOIN CTE2 ON CTE.num1=CTE2.num2 ORDER BY (CTE2.End_Date - CTE.Start_Date);


/* MS SQL SERVER SUBMISSION*/
WITH CTE AS(
    SELECT Start_Date, ROW_NUMBER() OVER(ORDER BY Start_Date) AS num1 FROM Projects )
SELECT MIN(Start_Date), DATEADD(DAY, 1, MAX(Start_Date)) FROM CTE
GROUP BY DATEDIFF(DAY, num1, Start_Date)
ORDER BY DATEDIFF(DAY, MIN(Start_Date), MAX(Start_Date)), MIN(Start_Date)