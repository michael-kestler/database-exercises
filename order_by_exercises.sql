USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya'
                           OR first_name = 'Maya';

SELECT * FROM employees WHERE gender = 'm' AND (
        first_name IN ('Irena', 'Maya', 'Vidya')
    );

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%Q%';

SELECT * FROM employees WHERE last_name LIKE 'E%%E';

SELECT * FROM employees WHERE last_name LIKE '%Q%' AND last_name
    NOT LIKE '%QU%';


