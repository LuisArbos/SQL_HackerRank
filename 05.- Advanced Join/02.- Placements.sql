/*
Placements

You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

STUDENTS
COLUMN 		TYPE
 ID		 Integer
 Name		 String

FRIENDS
COLUMN 		TYPE
 ID		 Integer
 Friend_ID	 Integer

PACKAGES
COLUMN 		TYPE
 ID		 Integer
 Salary		 Float

Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

*/

/* MYSQL SUBMISSION */
SELECT s.name FROM STUDENTS s INNER JOIN FRIENDS f ON s.ID = f.ID INNER JOIN PACKAGES p ON p.ID = f.ID INNER JOIN PACKAGES p1 ON p1.id = f.friend_id WHERE p1.salary > p.salary ORDER BY p1.salary ASC;

/* MS SQL SERVER SUBMISSION*/
SELECT s.name FROM STUDENTS s INNER JOIN FRIENDS f ON s.ID = f.ID INNER JOIN PACKAGES p ON p.ID = f.ID INNER JOIN PACKAGES p1 ON p1.id = f.friend_id WHERE p1.salary > p.salary ORDER BY p1.salary ASC;