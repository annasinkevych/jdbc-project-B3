/*
    WHERE Statement / Keyword
        - The WHERE clause appears right after the FROM clause of the SELECT statement.
        - The conditions are used to filter the rows returned from the SELECT statement.
        - SQL provides us with various standard operators to construct the conditions.

        Where Syntax
            SELECT column_1, column_2.. column_n
                FROM table_name
                WHERE conditions;
            Applies filter to result

            Select Where Statement - Operator - Description
                            =            Equal
                            >            Greater than
                            <            Less than
                            >=           Greater than or Equal
                            <=           Less than or equal
                            < > or !=    Not equal
                            =            Logical Operator AND
                            =            Logical operator OR
 */

 --first I create a session between my Intellij and database
SELECT * FROM HR;

--Get me first name, last name from employees table
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'David'; --the data between '' is CASE SENSITIVE

--GET ME ALL INFO FROM EMPLOYEES TABLE WHERE FIRST NAME IS DAVID
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME = 'David';

--GET ME FIRST NAME LAST NAME WHERE FIRST NAME = David, Last Name Lee
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'David' AND LAST_NAME = 'Lee';


--GET ME ALL INFO FROM EMPLOYEES TABLE
SELECT * FROM EMPLOYEES
WHERE SALARY > 6000;