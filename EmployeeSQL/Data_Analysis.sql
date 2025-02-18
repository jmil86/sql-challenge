--List the employee number, last name, first name, sex, and salary of each employee.

SELECT
    e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM
    employees AS e
INNER JOIN
    salaries AS s ON e.emp_no = s.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT 
    first_name,last_name, hire_date
FROM 
    employees
WHERE 
    EXTRACT(YEAR FROM hire_date) = 1986;


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT
	d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name  
FROM
	departments AS d
INNER JOIN
	dept_manager AS dm ON d.dept_no = dm.dept_no
INNER JOIN
	employees AS e ON dm.emp_no = e.emp_no;


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT
    d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM
    employees AS e
INNER JOIN
    dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN
    departments AS d ON de.dept_no = d.dept_no;

    
-- List each employee in the Sales department, including their employee number, last name, and first name.

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).