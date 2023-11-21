/*
Challenges

Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

The following tables contain challenge data:

HACKERS

FIELD 		TYPE
 HACKER_ID	 INTEGER
 NAME		 STRING

CHALLENGES

FIELD 		TYPE
 CHALLENGE_ID	 INTEGER
 HACKER_ID	 INTEGER

*/

/* MYSQL SUBMISSION */

WITH tempTable(id, name, total_count) AS(
SELECT h.hacker_id, h.name, COUNT(h.hacker_id)
FROM Hackers h INNER JOIN Challenges c ON h.hacker_id = c.hacker_id 
GROUP BY h.hacker_id, h.name 
),
tempTable2(total, total_max) AS(
SELECT total_count, COUNT(total_count) FROM tempTable GROUP BY total_count ORDER BY total_count DESC)

SELECT id, name, total_count FROM tempTable WHERE total_count = (SELECT total FROM tempTable2 LIMIT 1) OR total_count IN (SELECT total FROM tempTable2 WHERE total_max = 1)
ORDER BY total_count DESC, id ASC

/* MS SQL SERVER SUBMISSION*/

WITH cte AS(
SELECT hacker_id, COUNT(challenge_id) AS total_count FROM Challenges GROUP BY hacker_id)

SELECT h.hacker_id, h.name, c.total_count FROM Hackers h JOIN cte c ON h.hacker_id = c.hacker_id
WHERE c.total_count = (SELECT MAX(total_count) FROM cte) OR c.total_count IN (SELECT total_count FROM (SELECT total_count, COUNT(*) as cnt FROM cte GROUP BY total_count HAVING COUNT(*)=1) AS extra)

ORDER BY c.total_count DESC, h.hacker_id ASC;