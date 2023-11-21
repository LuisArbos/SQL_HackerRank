/*
Contest Leaderboard

You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of
from your result.

HACKERS

FIELD 		TYPE
 HACKER_ID	 INTEGER
 NAME		 STRING

SUBMISSIONS

FIELD 		TYPE
 SUBMISSION_ID	 INTEGER
 HACKER_ID	 INTEGER
 CHALLENGE_ID 	 INTEGER
 SCORE		 INTEGER

*/

/* MYSQL SUBMISSION */

SELECT s.hacker_id, h.name, SUM(s.score) AS tscore 
FROM (SELECT hacker_id, challenge_id, MAX(score) AS score FROM Submissions GROUP BY hacker_id, challenge_id) AS s INNER JOIN Hackers h ON h.hacker_id = s.hacker_id GROUP BY s.hacker_id, h.name HAVING tscore > 0 ORDER BY tscore DESC, s.hacker_id

/* MS SQL SERVER SUBMISSION*/

SELECT s.hacker_id, h.name, SUM(s.score) AS tscore 
FROM (SELECT hacker_id, challenge_id, MAX(score) AS score FROM Submissions GROUP BY hacker_id, challenge_id) AS s INNER JOIN Hackers h ON h.hacker_id = s.hacker_id GROUP BY s.hacker_id, h.name HAVING SUM(s.score) > 0 ORDER BY SUM(s.score) DESC, s.hacker_id;
