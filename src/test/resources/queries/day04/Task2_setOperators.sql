SELECT * FROM EMPLOYEES;

CREATE TABLE DEVELOPERS(
    ID_NUM INTEGER PRIMARY KEY,
    NAMES VARCHAR(30),
    SALARY INTEGER
);

SELECT * FROM DEVELOPERS;

CREATE TABLE TESTERS (
    ID_NUM INTEGER PRIMARY KEY,
    NAMES VARCHAR(30),
    SALARY INTEGER
);

SELECT * FROM TESTERS;

INSERT INTO DEVELOPERS VALUES(1, 'Tom', 155000);
INSERT INTO DEVELOPERS VALUES(2, 'John', 142000);
INSERT INTO DEVELOPERS VALUES(3, 'Steve', 85000);
INSERT INTO DEVELOPERS VALUES(4, 'Mike', 120000);

INSERT INTO TESTERS VALUES (1, 'Olex', 120000);
INSERT INTO TESTERS VALUES (2, 'Julie', 130000);
INSERT INTO TESTERS VALUES (3, 'James', 140000);
INSERT INTO TESTERS VALUES (4, 'Anna', 150000);


UPDATE TESTERS
    SET NAMES = 'Steve'
WHERE ID_NUM = 3; -- CHANGING TESTERS'S NAME JAMES TO STEVE
commit;


/*
    UNION(1ST SET OPERATOR)- both queries must return the same number of columns
          - same data type
          - same order
    RETURNS ALL NAMES FROM BOTH TABLES, REMOVES ALL DUPLICATE ROWS
 */

SELECT NAMES FROM DEVELOPERS
UNION
SELECT NAMES FROM TESTERS;

/*
    UNION ALL
            - combines to SQL query results without removing duplicates
 */
SELECT NAMES FROM DEVELOPERS
UNION ALL
SELECT NAMES FROM TESTERS;


/*
    MINUS
        - From first query result it will remove the matching one from second table
 */

 SELECT NAMES FROM TESTERS
 MINUS
 SELECT NAMES FROM DEVELOPERS;

/*
    INTERSECT
            - Returns result which is MATCHING in both queries
 */

 SELECT SALARY FROM DEVELOPERS
 INTERSECT
 SELECT SALARY FROM TESTERS;

SELECT NAMES FROM DEVELOPERS
INTERSECT
SELECT NAMES FROM TESTERS;