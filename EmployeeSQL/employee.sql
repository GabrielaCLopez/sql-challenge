--Create tables for all of the csv files
CREATE TABLE departments(
  	dept_no INTEGER NOT NULL,
	dept_name VARCHAR() NOT NULL,
  	PRIMARY KEY()
);

CREATE TABLE dept_emp(
  	emp_no INTEGER NOT NULL,
	dept_no INTEGER NOT NULL,
  	PRIMARY KEY()
);

CREATE TABLE dept_manager(
  	dept_no INTEGER NOT NULL,
	emp_no INTEGER NOT NULL,
  	PRIMARY KEY()
);

CREATE TABLE employees(
  	emp_no INTEGER NOT NULL,
	temp_title_id INTEGER NOT NULL,
	birth_date INTEGER NOT NULL,
	first_name VARCHAR() NOT NULL,
	last_name VARCHAR() NOT NULL,
	sex VARCHAR() NOT NULL,
	hire_date INTEGER NOT NULL,
  	PRIMARY KEY()
);

CREATE TABLE salaries(
  	emp_no INTEGER NOT NULL,
	salary MONEY NOT NULL,
  	PRIMARY KEY()
);

CREATE TABLE titles(
  	titleID INTEGER NOT NULL,
	title VARCHAR() NOT NULL,
  	PRIMARY KEY()
);