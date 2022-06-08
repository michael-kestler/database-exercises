USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY  first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY  last_name, first_name;


SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya'
                           OR first_name = 'Maya';

SELECT * FROM employees WHERE gender = 'm' AND (
        first_name IN ('Irena', 'Maya', 'Vidya')
    );

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT CONCAT (first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE '%Q%';

SELECT * FROM employees WHERE last_name LIKE 'E%%E' ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%%E' ORDER BY emp_no DESC;


SELECT * FROM employees WHERE last_name LIKE '%Q%' AND last_name
    NOT LIKE '%QU%';

SELECT * FROM employees WHERE birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE year(birth_date) LIKE '199%'
AND month(birth_date) = 12
AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;
