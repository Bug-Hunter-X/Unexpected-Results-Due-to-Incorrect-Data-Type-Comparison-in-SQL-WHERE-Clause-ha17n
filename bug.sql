```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might encounter issues if the `salary` column is not defined as a numeric data type.  If it's stored as a string, the comparison `salary > 100000` might lead to unexpected results (lexicographical comparison instead of numeric comparison).