USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
        WHERE de.to_date = '9999-01-01';
;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND gender = 'f';
;

SELECT t.title as title, COUNT(*) AS Total
FROM titles as t
         JOIN dept_emp as de on t.emp_no = de.emp_no
        JOIN departments as d on de.dept_no = d.dept_no

WHERE t.to_date = '9999-01-01'
AND dept_name = 'Customer Service'
AND de.to_date = '9999-01-01'
GROUP BY title;

# DESCRIBE departments;
#
# SELECT * FROM titles;
#
# SELECT dept_name from departments where dept_name = 'Customer Service';
#
# SELECT * FROM departments ;
#
# SELECT * FROM dept_emp;












SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name)
    AS 'Department Manager', s.salary AS 'Salary'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01' AND s.to_date = '9999-01-01';
;