/*
Weather Observation Station 20

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places. 

Input Format

The STATION table is described as follows:

FIELD		TYPE
 ID		 NUMBER
 CITY		 VARCHAR2(21)
 STATE		 VARCHAR2(2)
 LAT_N		 NUMBER
 LONG_W		 NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude. 

*/

/* MYSQL SUBMISSION */

SET @rowindex = -1;
SELECT ROUND(AVG(d.LAT_N),4) AS median FROM (SELECT @rowindex:=@rowindex + 1 AS rowindex, station.LAT_N as LAT_N FROM station ORDER BY station.LAT_N) AS d 
WHERE d.rowindex IN (FLOOR(@rowindex / 2), CEIL(@rowindex / 2))

/* MS SQL SERVER SUBMISSION*/

WITH OrderedStation AS ( SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS RowAsc, ROW_NUMBER() OVER (ORDER BY LAT_N DESC) AS RowDesc FROM STATION)
SELECT CAST(AVG(LAT_N) AS DECIMAL(18,4)) AS Median
FROM OrderedStation WHERE RowAsc = RowDesc OR RowAsc + 1 = RowDesc OR RowAsc - 1 = RowDesc;
