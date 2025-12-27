-- Employees and their managers
SELECT e.emp_name AS employee, m.emp_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

-- Employees earning more than manager
SELECT e.emp_name
FROM employees e
JOIN employees m
ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;
