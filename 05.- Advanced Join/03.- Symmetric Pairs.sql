/*
Symmetric Pairs

You are given a table, Functions, containing two columns: X and Y.

COLUMN 		TYPE
 X		 Integer
 Y	 	 Integer

Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1. 
*/

/* MYSQL SUBMISSION */
WITH cte AS (
    SELECT X,Y,COUNT(*) AS C FROM FUNCTIONS
WHERE X = Y GROUP BY X,Y
HAVING COUNT(*)<=1)

SELECT DISTINCT F.X,F.Y FROM (SELECT X,Y FROM FUNCTIONS
EXCEPT SELECT X,Y FROM cte) AS F
INNER JOIN FUNCTIONS AS F2 ON F.X = F2.Y AND F2.X = F.Y
WHERE F.X <= F.Y
ORDER BY F.X


/* MS SQL SERVER SUBMISSION*/
WITH cte AS (
    SELECT X,Y,COUNT(*) AS C FROM FUNCTIONS
WHERE X = Y GROUP BY X,Y
HAVING COUNT(*)<=1)

SELECT DISTINCT F.X,F.Y FROM (SELECT X,Y FROM FUNCTIONS
EXCEPT SELECT X,Y FROM cte) AS F
INNER JOIN FUNCTIONS AS F2 ON F.X = F2.Y AND F2.X = F.Y
WHERE F.X <= F.Y
ORDER BY F.X