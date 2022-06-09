USE employees;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name,
birth_date AS DOB
FROM employees
LIMIT 10;






#        birth_date FROM employees
# WHERE birth_date LIKE '%04-01' AND birth_date NOT LIKE '195%';