USE employees;
SELECT * FROM employees WHERE first_name
    IN ('Irena', 'Vidya', 'Lipner', 'Maya' );

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%Q%';
