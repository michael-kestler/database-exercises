USE employees;
SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%%E';

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%%E';

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%Q%' AND last_name
    NOT LIKE '%QU%';


SELECT DISTINCT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%Q%' AND last_name
    NOT LIKE '%QU%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;

