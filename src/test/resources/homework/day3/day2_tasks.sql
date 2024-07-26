--Part 2 -- Sting Functions (Concat), Subquery, ROWNUM,

-- 1. display full addresses from locations table in a single column
SELECT * FROM LOCATIONS;

SELECT (STREET_ADDRESS || ' ' || POSTAL_CODE || ' ' || CITY || ' ' || STATE_PROVINCE || ' ' || COUNTRY_ID) AS FULL_ADDRESS FROM LOCATIONS;

-- 2. display all information of the employee who has the minimum salary in employees table
SELECT MIN(SALARY) FROM EMPLOYEES;

SELECT * FROM EMPLOYEES
WHERE SALARY IN (SELECT MIN(SALARY) FROM EMPLOYEES);

-- 3. display the second minimum salary from the employees
SELECT MIN(SALARY) FROM EMPLOYEES
WHERE SALARY > (SELECT MIN(SALARY) FROM EMPLOYEES);


-- 4. display all information of the employee who has the second minimum salary
SELECT * FROM EMPLOYEES
WHERE SALARY = ( SELECT MIN(SALARY) FROM EMPLOYEES
                WHERE SALARY > (SELECT MIN(SALARY) FROM EMPLOYEES))

-- 5. list all the employees who are making above the average salary;
SELECT ROUND(AVG(SALARY), 2)  FROM EMPLOYEES; --6461.83
SELECT * FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);


-- 6. list all the employees who are making less than the average salary
SELECT * FROM EMPLOYEES
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);

-- 7. display manager name of 'Neena'
SELECT * FROM EMPLOYEES;
/*
 This performs an inner join on the employees table, using it twice with different aliases (e and m).
The join condition e.employee_id = m.manager_id ensures that we are matching employees (e) with their managers (m).
e.employee_id refers to the employee's ID, and m.manager_id refers to the manager's ID. This means we are looking for
 records where the employee_id of one employee matches the manager_id of another.
 */
SELECT E.FIRST_NAME, E.LAST_NAME
FROM EMPLOYEES E
JOIN EMPLOYEES M ON E.EMPLOYEE_ID = M.MANAGER_ID
WHERE M.FIRST_NAME = 'Neena';


-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
SELECT MAX(SALARY) FROM EMPLOYEES;

SELECT MAX(SALARY) FROM EMPLOYEES
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES);

SELECT MAX(SALARY) FROM EMPLOYEES
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES
                WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES));

-- 9. find the 5th maximum salary from the employees table (do not include duplicates)
SELECT MAX(SALARY) FROM EMPLOYEES
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES
                WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES
                    WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES))));

--GET TOP 5 HIGHEST  SALARIES
SELECT SALARY FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
                    ORDER BY SALARY ASC)
WHERE ROWNUM <=7;

--5TH HIGHEST SALARY
SELECT MIN(SALARY) FROM EMPLOYEES
WHERE SALARY IN (SELECT SALARY FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC)
WHERE ROWNUM <=5);

-- 10. find the 7th maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY) FROM EMPLOYEES
WHERE SALARY IN (SELECT SALARY FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC)
WHERE ROWNUM <=7);

-- 11. find the 10th maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY) FROM EMPLOYEES
WHERE SALARY IN (SELECT SALARY FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC)
WHERE ROWNUM <=10);

-- 12. find the 3rd minimum salary from the employees table (do not include duplicates)
SELECT MAX(SALARY) FROM EMPLOYEES
WHERE SALARY IN (SELECT SALARY FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY ASC)
WHERE ROWNUM <=3);--2400

-- 13. find the 5th minimum salary from the employees table (do not include duplicates)
SELECT MAX(SALARY) FROM EMPLOYEES
WHERE SALARY IN (SELECT SALARY FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY ASC)
WHERE ROWNUM <=5);--2600.00

-- 14. find the 7th maximum salary from the employees table (do not include duplicates)
SELECT MAX(SALARY) FROM EMPLOYEES
WHERE SALARY IN (SELECT SALARY FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY ASC)
WHERE ROWNUM <=7);--2800.00

-- 15. find the 10th maximum salary from the employees table (do not include duplicates)
SELECT MAX(SALARY) FROM EMPLOYEES
WHERE SALARY IN (SELECT SALARY FROM (SELECT DISTINCT SALARY FROM EMPLOYEES
ORDER BY SALARY ASC)
WHERE ROWNUM <=10);
