SELECT * FROM Employees;

--Display all info based on salary in descending order
SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC;


--Display all info based on salary in ascending order
SELECT * FROM EMPLOYEES
ORDER BY SALARY ASC;

--Display all info based on salary by default order
SELECT * FROM EMPLOYEES
ORDER BY SALARY; -- by default is ascending order

-- you can also give a column INDEX instead of COLUMN NAME
SELECT * FROM EMPLOYEES
ORDER BY 8 ASC;

--This email is sorted based on the salary
SELECT EMAIl FROM EMPLOYEES
ORDER BY SALARY;

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID < 150
ORDER BY FIRST_NAME;

--IQ: Display all info from Employees based on first name asc order and last name descending
--This will display info with first name in the ascending order, and if there are similar names, the last names will
--be sorted in the ascending order for those duplicates only.
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES
ORDER BY FIRST_NAME ASC, LAST_NAME DESC;