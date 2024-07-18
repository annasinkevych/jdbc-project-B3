/*
    DISTINCT keyword
    Instruction to remove all duplicates(it only removes from the result,
    from the database table
 */

 --First we create a session to establish the connection with our database
SELECT * FROM EMPLOYEES;

--display postal code from location
SELECT STREET_ADDRESS, POSTAL_CODE FROM LOCATIONS;

--since we didn't have any duplicates the same number of results was displayed
SELECT DISTINCT STREET_ADDRESS, POSTAL_CODE FROM LOCATIONS;

--get me first names from employees table
SELECT FIRST_NAME FROM EMPLOYEES;
--DISTINCT keyword removed all duplicates from the result that we got from our
--SELECT DISTINCT Query
SELECT DISTINCT FIRST_NAME FROM EMPLOYEES;


--get me ids from employees
SELECT JOB_ID FROM EMPLOYEES;
--get me unique ids from employees
SELECT DISTINCT JOB_ID FROM EMPLOYEES;

--get me ids and salary from employees
SELECT JOB_ID, SALARY FROM EMPLOYEES;
--get me unique ids and salary from employees(removes duplicates for both of the columns)
--this displays the uniqueness of the two columns, the combination of those two, so if one job id has 2 different salary amounts,
--they would both be displayed
SELECT DISTINCT JOB_ID, SALARY FROM EMPLOYEES;

--Get me all country IDs from Location
SELECT COUNTRY_ID FROM LOCATIONS;
--Get me unique country IDs from Location
SELECT DISTINCT COUNTRY_ID FROM LOCATIONS;


SELECT JOB_ID FROM JOBS;
SELECT DISTINCT JOB_ID FROM JOBS;
SELECT DISTINCT * FROM JOBS;