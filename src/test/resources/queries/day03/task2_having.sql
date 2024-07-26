SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'It_PROG';


SELECT JOB_ID, COUNT(*)  FROM EMPLOYEES
GROUP BY JOB_ID;

SELECT JOB_ID, MAX(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID ;

--group them by job_id where average salary more than 5k
SELECT JOB_ID, AVG(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID;

-- FIRST we found all the jobs where SALARY is more than 5k
-- SECOND we grouped the by the job id
-- LASTLY we found the average


SELECT JOB_ID, COUNT(*), AVG(SALARY) FROM EMPLOYEES
WHERE SALARY > 5000
GROUP BY JOB_ID;


SELECT JOB_ID, COUNT(*) FROM EMPLOYEES
--WHERE SALARY > 5000
GROUP BY JOB_ID
HAVING AVG(SALARY) > 5000;

/*
    Difference between WHERE and HAVING with 'GROUP BY'
    WHERE ---> it filters to show the result BEFORE we put them in groups
    HAVING ---> it filters to show after we put them in groups
 */

 --
SELECT DEPARTMENT_ID, COUNT(*) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 5;


--Display duplicate first names only in employees
SELECT FIRST_NAME, COUNT(*) FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(*) > 1;

--Display unique first names only in employees
SELECT FIRST_NAME, COUNT(*) FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(*) = 1;