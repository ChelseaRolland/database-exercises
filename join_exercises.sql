USE join_test_db;
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

INSERT INTO users (id, name, email, role_id)
VALUES ('Coven', 'coven@crewdudes.com', 2),
       ('Alys', 'alys@bcrewdudes.com', 3),
       ('Rover', 'rover@crewdudes.com', 2),
       ('Zio', 'zio@crewdudes.com', NULL);

#Inner Join
SELECT u.name AS 'User_name', r.name AS 'Role_name'
FROM users AS u
         JOIN roles AS r
              ON r.id = u.role_id;


#Left Join
SELECT u.name AS 'User_name', r.name AS 'Role_name'
FROM users AS u
         LEFT JOIN roles AS r
                   ON r.id = u.role_id;

#Right Join
SELECT u.name AS 'User_name', r.name AS 'Role_name'
FROM users AS u
         RIGHT JOIN roles AS r
                    ON r.id = u.role_id;

USE employees;

select * from departments;
select * from dept_manager;
select * from dept_emp;
select * from titles;
select * from employees;
select * from salaries;

SELECT d.dept_name AS 'Department_Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department_Manager'
FROM employees AS e
         JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department_Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager_Name'
FROM employees AS e
         JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F' ORDER BY d.dept_name;

SELECT title, COUNT(title)
FROM titles AS t
         JOIN dept_emp AS de ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
  AND t.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
GROUP BY title;


SELECT d.dept_name AS 'Department_Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department_Manager', s.salary AS 'Salary'
FROM employees AS e
         JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
         JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01' ORDER BY d.dept_name;

#Bonus ??? not sure how to do this
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee_Name', d.dept_name AS 'Department_Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager_Name'
FROM employees AS e
         JOIN dept_emp AS de ON de.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
#          JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01' ORDER BY d.dept_name;