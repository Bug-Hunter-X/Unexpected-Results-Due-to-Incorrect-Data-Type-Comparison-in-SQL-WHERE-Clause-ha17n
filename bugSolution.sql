```sql
-- Ensure that the salary column is a numeric data type (e.g., INT, DECIMAL)
-- If it's a string, convert it to a numeric type during the comparison
SELECT * FROM employees WHERE department = 'Sales' AND CAST(salary AS DECIMAL(10,2)) > 100000;

--Alternatively, if you can alter the table structure, change the data type of the salary column to a numeric type.
--ALTER TABLE employees ALTER COLUMN salary TYPE DECIMAL(10,2);
--Then you can run the original query without the CAST function.
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```