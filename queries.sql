--Find all employees
SELECT * FROM employee;

--Find all clients
SELECT * FROM Client;

--Find all employees ordered by salary
SELECT * FROM employee ORDER BY salary;

--Find all employees ordered by sex then name
SELECT * FROM employee ORDER BY sex, first_name, last_name;

--Find the first 5 employees in the table
SELECT * FROM employee LIMIT 5;

--Find the first and last names of all employees
SELECT first_name, last_name FROM employee;

--Find the forename and the surnames of all employees
SELECT first_name AS forename, last_name AS surname FROM employee;

--Find out all the different genders
SELECT DISTINCT sex FROM employee;

--Find the number of employees
SELECT COUNT(emp_id) FROM employee;

--Find the number of female employees born after 1970
SELECT COUNT(emp_id) FROM employee WHERE sex = "F" AND birth_date >=1971-01-01;

--Find the average of all employee's salaries
SELECT AVG(salary) FROM employee;

--Find the sum of all employee's salaries
SELECT SUM(salary) FROM employee;

--Find out how many males and females there are 
SELECT COUNT(sex),sex FROM employee GROUP BY sex;

--Find the total sales of each salesman
SELECT SUM(total_sales), emp_id FROM works_with GROUP BY client_id, emp_id;

---- Find the total amount of money spent by each client
SELECT SUM(total_sales), client_id FROM works_with GROUP BY client_id;

-- Find any client's who are an LLC
SELECT * FROM client WHERE client_name LIKE '%LLC';

--Find any branch suppliers who are in the label business
SELECT * FROM branch_supplier WHERE supplier_name LIKE "%LABELS";

--Find any employee born in October
SELECT * FROM employee WHERE birth_date LIKE '____-10%';

--Find any client who are schools
SELECT * FROM client WHERE client_name LIKE '%school%';

--Find a list of employee and branch names
SELECT first_name FROM employee
UNION
SELECT branch_name FROM Branch;

--Find a list of all clients and branch supplier's NAMES
SELECT client_name FROM client
UNION
SELECT supplier_name FROM branch_supplier;

--Find a list of all money spent or earned by the company
SELECT salary FROM employee
UNION
SELECT total_sales FROM works_with;

--Find names of all employees who have sold over 50,000 to a single client
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (SELECT works_with.emp_id
                          FROM works_with
                          WHERE works_with.total_sales > 50000);




 