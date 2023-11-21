/*
Draw The Triangle 1

P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*

Write a query to print the pattern P(20).

*/

/* MYSQL SUBMISSION */

DELIMITER //

CREATE PROCEDURE simple_loop (IN i INT)

BEGIN
    DECLARE to_print VARCHAR(255);
    
    WHILE i > 0 DO
        SET to_print = REPEAT("* ", i);
        SELECT to_print;
        SET i = i - 1;
    END WHILE;
END

//

CALL simple_loop(20);

/* MS SQL SERVER SUBMISSION*/

DECLARE @i INT = 20
WHILE(@i>0)
BEGIN
   PRINT REPLICATE('* ', @i)
   SET @i = @i - 1
END
