# SQL_50

Leetcode SQL questions collection.


## Differences Between Grouped and Ungrouped Tables in SQL

| Aspect                      | Ungrouped Table                               | Grouped Table                                           |
|-----------------------------|-----------------------------------------------|--------------------------------------------------------|
| **Purpose**                 | Contains individual, raw data rows           | Contains aggregated data based on specified criteria  |
| **Result of Aggregation**   | No aggregation; each row is unique           | Aggregation functions applied to create summary rows  |
| **Use of GROUP BY Clause**  | Typically not used                            | Required to group data based on one or more columns  |
| **Aggregated Columns**      | Original columns                             | Result columns based on aggregation functions        |
| **Aggregation Functions**   | Not used                                      | Commonly used (e.g., COUNT, SUM, AVG, MAX, MIN)      |
| **Example Query**           | `SELECT * FROM table_name;`                  | `SELECT column1, AGG_FUNC(column2) FROM table GROUP BY column1;` |

## Differences Between `WHERE` and `HAVING` Clauses in SQL

| Aspect                  | `WHERE` Clause                           | `HAVING` Clause                            |
|-------------------------|------------------------------------------|-------------------------------------------|
| **Usage**               | Filters rows before grouping/aggregation | Filters grouped/aggregated results       |
| **Placement**           | Before `GROUP BY` (if used)              | After `GROUP BY`                          |
| **Filtering**           | Applies to individual rows               | Applies to aggregated/grouped data       |
| **Aggregation Involvement** | Does not involve aggregation        | Typically involves aggregation functions |
| **Example Query**       | `SELECT * FROM table WHERE condition;`  | `SELECT column, AGG_FUNC(...) FROM table GROUP BY column HAVING condition;` |


## Differences Between `UPDATE` and `REPLACE` in SQL

| Aspect                    | `UPDATE` Operation                        | `REPLACE` Operation                             |
|---------------------------|------------------------------------------|-------------------------------------------------|
| **Purpose**               | Modifies existing records in a table     | Replaces existing records or inserts new ones   |
| **Affected Rows**         | Modifies data in-place                   | Replaces entire rows or inserts new ones       |
| **Syntax**                | `UPDATE table_name SET column=value WHERE condition;` | `REPLACE INTO table_name (columns) VALUES (values);` |
| **Conditional**           | Allows conditional updates based on a `WHERE` clause | Typically used for full row replacement        |
| **Primary Key Usage**     | Typically used with `WHERE` clause to specify the rows to update | Relies on primary keys to determine replacements |
| **Atomicity**             | An `UPDATE` operation is atomic, affecting only the specified rows | A `REPLACE` operation is also atomic, but it may delete and insert rows |
| **Indexes and Triggers**  | Triggers and indexes associated with the table may be affected | Triggers and indexes may be affected as well    |

