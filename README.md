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

## Subqueries in SQL

Subqueries, also known as nested queries or subselects, are a powerful feature in SQL that allow you to embed one query (the inner query or subquery) within another query (the outer query). Subqueries are used for various purposes, including filtering, data retrieval, and making complex queries more manageable.

### Purpose of Subqueries

Subqueries serve several purposes in SQL:

1. **Filtering Data**: Subqueries can be used to filter rows based on conditions. You can use a subquery in the `WHERE` clause of the outer query to retrieve rows from the outer query based on the results of the inner query.

2. **Data Retrieval**: Subqueries can retrieve data from one table and use it in another query. For example, you can use a subquery to retrieve a single value or a set of values that are then used in the main query.

3. **Comparisons**: Subqueries can be used to compare values in one table with values in another table. This is commonly used in scenarios where you need to find records that match certain criteria.

### Syntax of Subqueries

The basic syntax of a subquery involves placing the inner query within parentheses and using it as an operand within another SQL statement. Here's a generic structure:

```sql
SELECT column1, column2, ...
FROM table1
WHERE columnX operator (SELECT columnY FROM table2 WHERE condition);```

### Types of Subqueries:

1. **Scalar Subquery:** A scalar subquery returns a single value and can be used in a comparison with a single value in the outer query. For example:

```sql
SELECT product_name
FROM products
WHERE product_price > (SELECT AVG(product_price) FROM products);```

