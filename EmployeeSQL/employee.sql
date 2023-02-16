--Create tables for all of the csv files
DROP TABLE IF EXISTS departments
DROP TABLE IF EXISTS dept_emp
DROP TABLE IF EXISTS dept_manager
DROP TABLE IF EXISTS employees
DROP TABLE IF EXISTS salaries
DROP TABLE IF EXISTS titles

CREATE TABLE departments(
  	dept_no VARCHAR NOT NULL, 
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE titles(
  	titleID VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (titleID)
);

CREATE TABLE employees(
  	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex CHAR NOT NULL,
	hire_date DATE NOT NULL,
  	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(titleID)
);

CREATE TABLE dept_emp(
  	emp_no INTEGER NOT NULL,
	dept_no VARCHAR NOT NULL,
  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
  	dept_no VARCHAR NOT NULL,
	emp_no INTEGER NOT NULL,
  	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
  	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from salaries

