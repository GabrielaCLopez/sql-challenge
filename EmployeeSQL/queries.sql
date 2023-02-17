--List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees AS emp
JOIN salaries AS sal
ON emp.emp_no=sal.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT emp.first_name, emp.last_name, emp.hire_date
FROM employees AS emp
WHERE emp.hire_date BETWEEN '1/1/1986' AND '12/31/1986'

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dp.dept_no, dp.dept_name, dm.emp_no, emp.last_name, emp.first_name
FROM departments as dp
JOIN dept_manager as dm
ON dp.dept_no=dm.dept_no
JOIN employees as emp
ON dm.emp_no=emp.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, de.dept_no, dp.dept_name
FROM employees AS emp
JOIN dept_emp AS de
ON emp.emp_no=de.emp_no
JOIN departments as dp
ON de.dept_no=dp.dept_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT emp.first_name, emp.last_name, emp.sex
FROM employees as emp
WHERE emp.first_name='Hercules'
AND emp.last_name like 'B%'

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dp.dept_name
FROM employees as emp
JOIN dept_emp as de
ON emp.emp_no=de.emp_no
JOIN departments as dp
ON de.dept_no=dp.dept_no
WHERE dp.dept_name='Sales'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dp.dept_name
FROM employees as emp
JOIN dept_emp as de
ON emp.emp_no=de.emp_no
JOIN departments as dp
ON de.dept_no=dp.dept_no
WHERE dp.dept_name='Sales' OR dp.dept_name='Development'

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
