/*

Occupations

Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:

COLUMN		TYPE
 Name		 STRING
 Occupation	 STRING


Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.


*/

/* MYSQL SUBMISSION */

SELECT
    MAX(CASE WHEN OCCUPATION = "Doctor" THEN NAME END) AS Doctor,
    MAX(CASE WHEN OCCUPATION = "Professor" THEN NAME END) AS Professor,
    MAX(CASE WHEN OCCUPATION = "Singer" THEN NAME END) AS Singer,
    MAX(CASE WHEN OCCUPATION = "Actor" THEN NAME END) AS Actor
FROM 
    (SELECT NAME, OCCUPATION, ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME ASC) AS ROW_NO FROM OCCUPATIONS) AS PIVOT_WINDOW GROUP BY ROW_NO

/* MS SQL SERVER */

SELECT
    MAX(CASE WHEN OCCUPATION = "Doctor" THEN NAME END) AS Doctor,
    MAX(CASE WHEN OCCUPATION = "Professor" THEN NAME END) AS Professor,
    MAX(CASE WHEN OCCUPATION = "Singer" THEN NAME END) AS Singer,
    MAX(CASE WHEN OCCUPATION = "Actor" THEN NAME END) AS Actor
FROM 
    (SELECT NAME, OCCUPATION, ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME ASC) AS ROW_NO FROM OCCUPATIONS) AS PIVOT_WINDOW GROUP BY ROW_NO;
