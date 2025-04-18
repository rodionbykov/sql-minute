SELECT dept_name, COUNT(employees.emp_no) AS number_of_employees
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.to_date IS NULL
GROUP BY dept_name
ORDER BY number_of_employees DESC;

SELECT dept_name, ROUND(AVG(salary)) AS average_salary, COUNT(employees.emp_no)
FROM salaries
inner JOIN employees ON employees.emp_no = salaries.emp_no
inner JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
inner JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE salaries.to_date IS NULL AND dept_emp.to_date IS NULL
GROUP BY dept_name
ORDER BY average_salary DESC;

