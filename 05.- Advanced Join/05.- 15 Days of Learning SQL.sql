/*
15 Days of Learning SQL

Julia conducted a 15 days of learning SQL contest. The start date of the contest was March 01, 2016 and the end date was March 15, 2016.

Write a query to print total number of unique hackers who made at least 1 submission each day (starting on the first day of the contest), and find the hacker_id and name of the hacker who made maximum number of submissions each day. If more than one such hacker has a maximum number of submissions, print the lowest hacker_id. The query should print this information for each day of the contest, sorted by the date.

Input Format

The following tables hold contest data:

    Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.

COLUMN 			TYPE
 hacker_id		 Integer
 name			 String

    Submissions: The submission_date is the date of the submission, submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, and score is the score of the submission. 

COLUMN 			TYPE
 submission_date		 Date
 submission_id		 Integer
 hacker_id		 Integer
 score			 Integer 
*/

/* MYSQL SUBMISSION */

/* I tried to solve it using CTEs but apparently they don't work in this MySQL version. As I don't know in which am I working on the platform, I can't look for documentation. Also couldn't figure out another way to solve it without ctes. */

/* MS SQL SERVER SUBMISSION*/


WITH cte0(submission_date, hacker_id, row_num) AS (
    SELECT submission_date, hacker_id, ROW_NUMBER() OVER (PARTITION BY submission_date ORDER BY COUNT(submission_id) DESC, hacker_id ASC) AS row_num
    FROM submissions
    GROUP BY submission_date, hacker_id
),
cte1(submission_date, hacker_id, name) AS (
    SELECT c.submission_date, c.hacker_id, h.name
    FROM cte0 c
    LEFT JOIN hackers h ON c.hacker_id = h.hacker_id
    WHERE c.row_num = 1
),
cte2(prev_date, hacker, total) AS (
    SELECT submission_date, hacker_id, 0 FROM cte0 WHERE submission_date = "2016-03-01" 
    UNION ALL   
    SELECT c1.submission_date, c.hacker_id, COUNT(c2.submission_date)
    FROM cte1 c1, cte1 c2, cte0 c
    WHERE c1.submission_date > c2.submission_date AND c.submission_date = c2.submission_date AND c.hacker_id IN (SELECT hacker_id FROM cte0 WHERE submission_date = c1.submission_date)
    GROUP BY c1.submission_date, c.hacker_id
    HAVING COUNT(c2.submission_date) = DAY(c1.submission_date) - 1
)

SELECT c1.submission_date, COUNT(c2.hacker), c1.hacker_id, c1.name
FROM cte1 c1
LEFT JOIN cte2 c2 ON c1.submission_date = c2.prev_date
GROUP BY c1.submission_date, c1.hacker_id, c1.name
ORDER BY c1.submission_date;