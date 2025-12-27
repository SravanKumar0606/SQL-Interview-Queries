-- Employees earning more than department average
WITH avg_dept AS (
  SELECT department, AVG(salary) AS avg_sal
  FROM employees
  GROUP BY department
)
SELECT e.name
FROM employees e
JOIN avg_dept d
ON e.department = d.department
WHERE e.salary > d.avg_sal;
