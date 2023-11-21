/*
Ollivander's Inventory

Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

The following tables contain data on the wands in Ollivander's inventory:

WANDS

FIELD 		TYPE
 ID		 INTEGER
 CODE		 INTEGER
 COINS_NEEDED	 INTEGER
 POWER		 INTEGER

WANDS_PROPERTY

FIELD 		TYPE
 CODE		 INTEGER
 AGE		 INTEGER
 IS_EVIL	 INTEGER

*/

/* MYSQL SUBMISSION */

SELECT W.ID, WP.AGE, W.COINS_NEEDED, W.POWER FROM WANDS W INNER JOIN WANDS_PROPERTY WP ON W.CODE = WP.CODE 
WHERE WP.IS_EVIL != 1
AND W.COINS_NEEDED = (SELECT MIN(W2.COINS_NEEDED) FROM WANDS W2 INNER JOIN WANDS_PROPERTY WP2 ON W2.CODE = WP2.CODE WHERE WP2.AGE = WP.AGE AND W2.POWER = W.POWER)
ORDER BY 
W.POWER DESC, WP.AGE DESC

/* MS SQL SERVER SUBMISSION*/

SELECT W.ID, WP.AGE, W.COINS_NEEDED, W.POWER FROM WANDS W INNER JOIN WANDS_PROPERTY WP ON W.CODE = WP.CODE 
WHERE WP.IS_EVIL != 1
AND W.COINS_NEEDED = (SELECT MIN(W2.COINS_NEEDED) FROM WANDS W2 INNER JOIN WANDS_PROPERTY WP2 ON W2.CODE = WP2.CODE WHERE WP2.AGE = WP.AGE AND W2.POWER = W.POWER)
ORDER BY 
W.POWER DESC, WP.AGE DESC
