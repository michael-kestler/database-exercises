USE employees;

#SELECT * FROM employees WHERE hire_date - '1985-01-01';
# departments

SHOW TABLES;

DESCRIBE employees;
DESCRIBE salaries;


SELECT * FROM employees WHERE hire_date LIKE '1985%';

SELECT DISTINCT hire_date, birth_date
FROM employees WHERE hire_date LIKE '1985%'
ORDER BY hire_date DESC, birth_date DESC;

SELECT * FROM employees WHERE hire_date LIKE '%12-25';

SELECT * FROM employees WHERE hire_date LIKE '%-06-%';

SELECT * FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek' );

SELECT * FROM employees WHERE last_name = 'Herber' AND hire_date LIKE '199%';

SELECT * FROM employees WHERE hire_date LIKE '%12-25' OR hire_date LIKE '%10-31';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
  AND (
            last_name IN ('Herber','Baek')
        OR first_name = 'Shridhar'
    );

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Munenori'
LIMIT 9 OFFSET 18;

SELECT CONCAT(first_name, ' ', last_name) AS full_name, birth_date FROM employees
WHERE birth_date LIKE '%04-01' AND birth_date NOT LIKE '195%';


SELECT DISTINCT YEAR(hire_date) FROM employees order by YEAR(hire_date);

#SELECT DISTINCT MONTH(birth_date) FROM employees ORDER BY MONTH(birth_date);
#this returns months 1 thru 12. not useful.

SELECT NOW();
#gets timestamp


SELECT CONCAT(
               'Teaching people to code for ',
               (UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')) / 31536000,
               ' years'

           );



SELECT first_name, COUNT(*) FROM employees GROUP BY first_name;
SELECT DISTINCT first_name FROM employees;

SELECT COUNT(*) FROM employees;
SELECT COUNT(DISTINCT first_name) FROM employees;
#gets you count of all the unique instances of first_name in the database 1275










