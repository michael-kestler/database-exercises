USE employees;

SELECT CONCAT(last_name, ', ', first_name), birth_date
AS full_name
FROM employees
LIMIT 10;






#        birth_date FROM employees
# WHERE birth_date LIKE '%04-01' AND birth_date NOT LIKE '195%';