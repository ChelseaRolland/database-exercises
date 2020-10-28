USE employees;

#1.1
SELECT * FROM employees WHERE first_name ORDER BY first_name;

# 1.2
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') AND gender = 'M' ORDER BY first_name, last_name;

# 1.3
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') AND gender = 'M' ORDER BY last_name, first_name;

# 1.4
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no;
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no;
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no;

# 1.5
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no DESC;
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no DESC;
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no DESC;

# 1.6
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25%' ORDER BY birth_date ASC, hire_date DESC;