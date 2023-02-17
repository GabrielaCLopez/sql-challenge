# Employee Analysis #

This is a research project to analyze peopole who were employed at Pewlett Hackard during the 1980s and 1990s.
The information was provided in six CSV files.

Tables were created where the csv data could be imported. Once that was done, several queries could be made regarding the employees.

## Data Modeling
The first step was to inspect the CSV files and create an ERD of the tables using QUICKDBD.
![employees](https://user-images.githubusercontent.com/78400652/219530416-a3667b89-3a89-4b2c-b419-6650ac4f359c.png)


## Data Engineering
Next, tables had to be created for each of the CSV files. The data types had to be determined and primary keys and foreign keys were assigned.
The CSV files were then imported into the appropriate table.

## Data Analysis
Once the database was finished, the questions listed below were completed.

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
