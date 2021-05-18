/*
Write a SQL query to find all duplicate emails in a table named Person.
Source:Leetcode
*/
# Write your MySQL query statement below
select Email from Person group by Email having count(Email)>1

/*other solution,seems like self join is the fastest
select distinct a.email
from Person a, Person b
where a.id <> b.id and a.email = b.email
*/
/*
+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
For example, your query should return the following for the above table:

+---------+
| Email   |
+---------+
| a@b.com |
+---------+
*/
