
--First create a session between a query and the database
SELECT * FROM Employees;

SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY > 7000 AND DEPARTMENT_ID = 80;

--get me first name and salary and dept id for those who are making more than or equals to 3000
-- and less than or equal 6000
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY BETWEEN 3000 AND 6000;


--or write it with the and operator
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY >= 3000 AND SALARY <= 6000;


--get me all info who is working as IT Prorgram

SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';