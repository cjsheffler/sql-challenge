CREATE TABLE employees(
	emp_no int,
	birth_date date,
	first_name varchar,
	last_name varchar,
	gender varchar,
	hire_date date,
	PRIMARY KEY (emp_no)
);

CREATE TABLE departments(
	dept_no varchar,
	dept_name varchar,
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp(
	emp_no int,
	dept_no varchar,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no varchar,
	emp_no int,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries(
	emp_no int,
	salary int,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
	emp_no int,
	title varchar,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);