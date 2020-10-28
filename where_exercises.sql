USE employees;

#1.1
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
#2.1
SELECT * FROM employees WHERE first_name OR first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
# 2.2
SELECT * FROM employees WHERE first_name OR first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# 1.2
SELECT * FROM employees WHERE last_name LIKE 'E%';
# 2.2

# 1.3
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

# 2.3

# 1.4
SELECT * FROM employees WHERE birth_date LIKE '%12-25%';
# 2.4
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25%';

# 1.5
SELECT * FROM employees WHERE last_name LIKE '%q%';
# 2.5
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';