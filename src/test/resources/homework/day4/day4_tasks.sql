--Part 3 - Joins
SELECT  * FROM COUNTRIES;

-- 1. FIND OUT COUNTRY NAME AND REGION NAME FROM COUNTRIES AND REGION TABLE
SELECT COUNTRY_NAME, REGION_NAME
FROM COUNTRIES INNER JOIN REGIONS
ON COUNTRIES.REGION_ID = REGIONS.REGION_ID;


-- 2. FIND OUT FIRST_NAME AND JOB_TITLE FROM JOBS AND EMPLOYEES TABLE
SELECT FIRST_NAME, JOB_TITLE FROM EMPLOYEES INNER JOIN JOBS
ON EMPLOYEES.JOB_ID = JOBS.JOB_ID;

-- 3. FIND OUT DEPARTMENT_NAME AND CITY
SELECT DEPARTMENT_NAME, CITY FROM DEPARTMENTS INNER JOIN LOCATIONS
ON DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID;


-- 4. FIND OUT ALL CITIES  AND COUNTRY NAMES
SELECT CITY, COUNTRY_NAME FROM LOCATIONS INNER JOIN COUNTRIES
ON LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;

-- 5. FIND OUT FIRST_NAME, LAST NAME, DEPARTMENT ID , DEPARTMENT NAME FOR DEPARTMENT ID 80 OR 40
SELECT EMPLOYEES.FIRST_NAME, EMPLOYEES.LAST_NAME, EMPLOYEES.DEPARTMENT_ID, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES INNER JOIN DEPARTMENTS
ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
WHERE EMPLOYEES.DEPARTMENT_ID IN (80, 40);


-- 6. FIND OUT CITY , COUNTRY_NAME OF THAT CITY , REGION_NAME OF THAT CITY
SELECT LOCATIONS.CITY, COUNTRIES.COUNTRY_NAME, REGIONS.REGION_NAME FROM LOCATIONS INNER JOIN COUNTRIES
ON LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID
INNER JOIN REGIONS ON COUNTRIES.REGION_ID = REGIONS.REGION_ID;


-- 7. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY
SELECT FIRST_NAME, JOB_TITLE, DEPARTMENT_NAME, CITY FROM EMPLOYEES
INNER JOIN JOBS on EMPLOYEES.JOB_ID = JOBS.JOB_ID
INNER JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
INNER JOIN LOCATIONS ON DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID;


-- 8. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME
SELECT FIRST_NAME, JOB_TITLE, DEPARTMENT_NAME, CITY, COUNTRY_NAME, REGION_NAME
FROM EMPLOYEES INNER JOIN JOBS ON EMPLOYEES.JOB_ID = JOBS.JOB_ID
INNER JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
INNER JOIN LOCATIONS ON DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
INNER JOIN COUNTRIES ON LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID
INNER JOIN REGIONS ON COUNTRIES.REGION_ID = REGIONS.REGION_ID;


--9. FIND OUR  EMPLOYEES FIRST_NAME, LAST NAME, DEPARTMENT ID AND ALL DEPARTMENTS
--  INCLUDING  WHERE DO NOT HAVE ANY EMPLOYEE. --> USED LEFT JOIN -> RETURNS FULL LEFT TABLE
SELECT EMPLOYEES.FIRST_NAME, EMPLOYEES.LAST_NAME, DEPARTMENTS.DEPARTMENT_ID, DEPARTMENTS.DEPARTMENT_NAME
FROM DEPARTMENTS LEFT JOIN EMPLOYEES ON DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID
ORDER BY DEPARTMENTS.DEPARTMENT_ID;

--10. FIND OUT ALL DEPARTMENT_NAME  , LOCATION_ID , AND COUNTRY_ID
-- INCLUDING THOSE LOCATIONS  WITH NO DEPARTMENT
SELECT DEPARTMENTS.DEPARTMENT_NAME, LOCATIONS.LOCATION_ID, COUNTRIES.COUNTRY_ID
FROM LOCATIONS LEFT JOIN DEPARTMENTS ON LOCATIONS.LOCATION_ID = DEPARTMENTS.LOCATION_ID
LEFT JOIN COUNTRIES ON LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;

--11.FIND OUT DEPARTMENT_NAME , LOCATION_ID , AND COUNTRY_NAME
-- INCLUDING THOSE COUNTRIES WITH NO DEPARTMENT
SELECT DEPARTMENTS.DEPARTMENT_NAME, LOCATIONS.LOCATION_ID, COUNTRIES.COUNTRY_NAME
FROM COUNTRIES LEFT JOIN LOCATIONS ON COUNTRIES.COUNTRY_ID = LOCATIONS.COUNTRY_ID
LEFT JOIN DEPARTMENTS ON LOCATIONS.LOCATION_ID = DEPARTMENTS.LOCATION_ID;


--12. FIND OUT EMPLOYEES FIRST_NAME, DEPARTMENT ID AND DEPARTMENT NAME
-- INCLUDING THOSE DOES NOT HAVE DEPARTMENT
-- INCLUDING THOSE DEPARTMENTS  DOES NOT HAVE ANY MATCHING EMPLOYEES
SELECT EMPLOYEES.FIRST_NAME, DEPARTMENTS.DEPARTMENT_ID, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES FULL OUTER JOIN DEPARTMENTS ON EMPLOYEES.EMPLOYEE_ID = DEPARTMENTS.DEPARTMENT_ID;