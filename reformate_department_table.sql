/*
Table: Department

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| revenue       | int     |
| month         | varchar |
+---------------+---------+
(id, month) is the primary key of this table.
The table has information about the revenue of each department per month.
The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].
 

Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.

The query result format is in the following example:

Department table:
+------+---------+-------+
| id   | revenue | month |
+------+---------+-------+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+------+---------+-------+

Result table:
+------+-------------+-------------+-------------+-----+-------------+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
+------+-------------+-------------+-------------+-----+-------------+
| 1    | 8000        | 7000        | 6000        | ... | null        |
| 2    | 9000        | null        | null        | ... | null        |
| 3    | null        | 10000       | null        | ... | null        |
+------+-------------+-------------+-------------+-----+-------------+

Note that the result table has 13 columns (1 for the department id + 12 for the months).
*/
# Write your MySQL query statement below
select id, 
SUM(CASE when month="Jan" then revenue END) as "Jan_Revenue",
SUM(CASE when month="Feb" then revenue END) as "Feb_Revenue",
SUM(CASE when month="Mar" then revenue END) as "Mar_Revenue",
SUM(CASE when month="Apr" then revenue END) as "Apr_Revenue",
SUM(CASE when month="May" then revenue END) as "May_Revenue",
SUM(CASE when month="Jun" then revenue END) as "Jun_Revenue",
SUM(CASE when month="Jul" then revenue END) as "Jul_Revenue",
SUM(CASE when month="Aug" then revenue END) as "Aug_Revenue",
SUM(CASE when month="Sep" then revenue END) as "Sep_Revenue",
SUM(CASE when month="Oct" then revenue END) as "Oct_Revenue",
SUM(CASE when month="Nov" then revenue END) as "Nov_Revenue",
SUM(CASE when month="Dec" then revenue END) as "Dec_Revenue"
from Department
group by id
