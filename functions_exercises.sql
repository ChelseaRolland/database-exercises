USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full_Name' FROM employees WHERE last_name LIKE 'E%e' ORDER BY emp_no;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full_Name', DATEDIFF(CURDATE(), hire_date)  AS 'Days_At_Comapny' FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25%' ORDER BY birth_date ASC, hire_date DESC;