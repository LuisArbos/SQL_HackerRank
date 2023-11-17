/*

Binary Tree Nodes

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

COLUMN		TYPE
 N		 INTEGER
 P		 INTEGER

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

    Root: If node is root node.
    Leaf: If node is leaf node.
    Inner: If node is neither root nor leaf node.

*/

/* MYSQL SUBMISSION */

SELECT N,
CASE WHEN P IS NULL THEN "Root"
WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN "Leaf"
ELSE "Inner" END
FROM BST ORDER BY N

/* MS SQL SERVER */

SELECT N,
CASE WHEN P IS NULL THEN "Root"
WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN "Leaf"
ELSE "Inner" END
FROM BST ORDER BY N;
