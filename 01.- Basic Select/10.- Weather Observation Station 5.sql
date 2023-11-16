/* 
Weather Observation Station 5
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:

FIELD 		TYPE
 ID		 NUMBER
 CITY		 VARCHAR2(21)
 STATE 	 	 VARCHAR2(2)
 LAT_N	 	 NUMBER
 LONG_W 	 NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude.

When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths 3, 3, 4 and 3. The longest name is PQRS, but there are options for shortest named city. Choose ABC, because it comes first alphabetically.
*/

/* MYSQL SUBMISSION*/

SELECT CITY, LENGTH(CITY) FROM STATION WHERE LENGTH(CITY) IN(
SELECT MAX(LENGTH(CITY)) FROM STATION UNION
SELECT MIN(LENGTH(CITY)) FROM STATION)
ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 2;

/*MS SQL SERVER*/

SELECT TOP 2 CITY, LEN(CITY) FROM STATION WHERE LEN(CITY) IN(
SELECT MAX(LEN(CITY)) FROM STATION UNION
SELECT MIN(LEN(CITY)) FROM STATION)

ORDER BY LEN(CITY) DESC, CITY ASC;
