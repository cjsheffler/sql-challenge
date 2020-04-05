-- Data analysis
-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;

-- List employees who were hired in 1986.
-- Used this website to make sure I got the date ranges right. 
-- https://stackoverflow.com/questions/14208958/select-data-from-date-range-between-two-dates
SELECT * FROM employees WHERE (hire_date BETWEEN '1986-01-01' AND '1986-12-31');

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, 
-- and start and end employment dates.
SELECT d.dept_no, b.dept_name, d.emp_no, e.last_name, e.first_name, d.from_date, d.to_date
FROM dept_manager AS d
LEFT JOIN departments AS b ON d.dept_no=b.dept_no
LEFT JOIN employees AS e ON d.emp_no=e.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS f ON e.emp_no=f.emp_no
INNER JOIN departments as d ON f.dept_no=d.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
-- Confirmed how to use wildcard search using this site https://www.w3schools.com/sql/sql_like.asp
SELECT * FROM employees WHERE first_name='Hercules'
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including: 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS f ON e.emp_no=f.emp_no
INNER JOIN departments as d ON f.dept_no=d.dept_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including:
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS f ON e.emp_no=f.emp_no
INNER JOIN departments as d ON f.dept_no=d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "name_count"
FROM employees
GROUP BY last_name
ORDER BY "name_count" DESC;
