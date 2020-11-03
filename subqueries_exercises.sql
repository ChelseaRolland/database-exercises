USE employees;

SELECT emp_no, CONCAT(first_name, ' ', last_name) AS 'full_name' from employees
    where hire_date IN (
        SELECT hire_date FROM employees where emp_no = 101010);

# SELECT emp_no, CONCAT(first_name, ' ', last_name) AS 'full_name' from employees
#     where hire_date = (
#         SELECT hire_date FROM employees where emp_no = 101010);

SELECT title, COUNT(title) FROM titles
    WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod')
    GROUP BY title;

SELECT emp_no, CONCAT(first_name, ' ', last_name) AS 'full_name', gender
FROM employees
WHERE emp_no IN
      (SELECT emp_no FROM dept_manager WHERE to_date = '9999-01-01')
  AND gender = 'F';

# BONUS
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no FROM dept_manager WHERE to_date LIKE '9999%' AND emp_no IN (
        SELECT emp_no FROM employees WHERE gender = 'F'
    )
)
ORDER BY dept_name;


SELECT first_name, last_name FROM employees WHERE emp_no IN (
    SELECT emp_no FROM salaries WHERE to_date LIKE '9999%' AND salary IN (
        SELECT MAX(salary) from salaries
    ));

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name' FROM employees WHERE emp_no IN (
    SELECT emp_no FROM salaries WHERE to_date LIKE '9999%' AND salary IN (
        SELECT MAX(salary) from salaries
    ));
