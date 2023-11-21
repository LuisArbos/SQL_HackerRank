/*
Print Prime Numbers

Write a query to print all prime numbers less than or equal to 1000. Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).

For example, the output for all prime numbers <=10 would be:
2&3&5&7

*/

/* MYSQL SUBMISSION */

WITH RECURSIVE ODD_NUMBS(NUM) AS (
    SELECT 3
    UNION ALL 
    SELECT NUM + 2 FROM ODD_NUMBS WHERE NUM < 999)

SELECT CONCAT('2&', GROUP_CONCAT(NUM SEPARATOR '&')) FROM ODD_NUMBS AS NUMS1 
WHERE NOT EXISTS(SELECT * FROM ODD_NUMBS AS NUMS2 WHERE NUMS2.NUM < NUMS1.NUM AND NUMS1.NUM % NUMS2.NUM = 0)
/* MS SQL SERVER SUBMISSION*/

WITH ODD_NUMBS(NUM) AS (
    SELECT 3
    UNION ALL 
    SELECT NUM + 2 FROM ODD_NUMBS WHERE NUM < 999
)
SELECT '2&' + STRING_AGG(CONVERT(VARCHAR(10), NUM), '&') WITHIN GROUP (ORDER BY NUM) 
FROM ODD_NUMBS AS NUMS1 
WHERE NOT EXISTS (
    SELECT 1 
    FROM ODD_NUMBS AS NUMS2 
    WHERE NUMS2.NUM < NUMS1.NUM AND NUMS1.NUM % NUMS2.NUM = 0
)
OPTION (MAXRECURSION 1000);
