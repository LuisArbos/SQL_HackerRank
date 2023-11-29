/*
Interviews

Samantha interviews many candidates from different colleges using coding challenges and contests. Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions, total_views, and total_unique_views for each contest sorted by contest_id. Exclude the contest from the result if all four sums are 0.

Note: A specific contest can be used to screen candidates at more than one college, but each college only holds 1 screening contest.

Input Format

The following tables hold interview data:

    Contests: The contest_id is the id of the contest, hacker_id is the id of the hacker who created the contest, and name is the name of the hacker

COLUMN 			TYPE
 contest_ID		 Integer
 hacker_ID	 	 Integer
 name			 String

Colleges: The college_id is the id of the college, and contest_id is the id of the contest that Samantha used to screen the candidates. 

COLUMN 			TYPE
 college_ID		 Integer
 contest_ID	 	 Integer
 
Challenges: The challenge_id is the id of the challenge that belongs to one of the contests whose contest_id Samantha forgot, and college_id is the id of the college where the challenge was given to candidates. 

COLUMN 			TYPE
 college_ID		 Integer
 challenge_ID	 	 Integer

View_Stats: The challenge_id is the id of the challenge, total_views is the number of times the challenge was viewed by candidates, and total_unique_views is the number of times the challenge was viewed by unique candidates.

COLUMN 			TYPE
 total_views		 Integer
 challenge_ID	 	 Integer
 total_unique_views	 Integer

Submission_Stats: The challenge_id is the id of the challenge, total_submissions is the number of submissions for the challenge, and total_accepted_submission is the number of submissions that achieved full scores. 

COLUMN 				TYPE
 challenge_ID	 	 	 Integer
 total_submissions	 	 Integer
 total_accepted_submissions	 Integer

*/

/* MYSQL SUBMISSION */

/* I tried to solve it using CTEs but apparently they don't work in this MySQL version. As I don't know in which am I working on the platform, I can't look for documentation. Also couldn't figure out another way to solve it without ctes. */

/* MS SQL SERVER SUBMISSION*/

WITH cte1(contest_id, hacker_id, name, tsubmissions, tasubmissions) AS (
SELECT c.contest_id, c.hacker_id, c.name, SUM(s.total_submissions), SUM(s.total_accepted_submissions) 
FROM Contests c JOIN Colleges c2 ON c.contest_id = c2.contest_id
    JOIN Challenges c3 ON c2.college_id = c3.college_id
    JOIN Submission_Stats s ON c3.challenge_id = s.challenge_id
    GROUP BY c.contest_id, c.hacker_id, c.name),
    
    cte2(contest_id, hacker_id, name, tviews, tuviews) AS (
    SELECT c.contest_id, c.hacker_id, c.name, SUM(v.total_views), SUM(v.total_unique_views)
    FROM Contests c JOIN Colleges c2 ON c.contest_id = c2.contest_id
    JOIN Challenges c3 ON c2.college_id = c3.college_id
    JOIN View_Stats v ON c3.challenge_id = v.challenge_id
    GROUP BY c.contest_id, c.hacker_id, c.name)

SELECT c.contest_id, c.hacker_id, c.name, c.tsubmissions, c.tasubmissions, c2.tviews, c2.tuviews 
FROM cte1 c JOIN cte2 c2 ON c.hacker_id = c2.hacker_id
WHERE (c.tsubmissions + c.tasubmissions + c2.tviews + c2.tuviews)>0
ORDER BY c.contest_id

