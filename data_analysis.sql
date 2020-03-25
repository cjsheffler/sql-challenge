-- Data analysis
-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary

SELECT emp_no, last_name, first_name, gender FROM employees
UNION ALL 
SELECT salary FROM salaries;