/*
Draw The Triangle 2

P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *

Write a query to print the pattern P(20).
*/

/* MYSQL SUBMISSION */

DELIMITER // 
CREATE PROCEDURE PRINT (IN i INT)
BEGIN
    DECLARE var VARCHAR(255);
    DECLARE j INT DEFAULT 1;
    
    WHILE i>=j DO
        SET var = REPEAT("* ", j);
        SELECT var;
        SET j = j+1;
    END WHILE;
END;
//
CALL print(20);

/* MS SQL SERVER SUBMISSION*/

DECLARE @i INT = 1
WHILE(@i<=20)
BEGIN
   PRINT REPLICATE('* ', @i)
   SET @i = @i + 1
END
