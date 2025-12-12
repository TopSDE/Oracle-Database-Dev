SQL> -- 1. LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE COMM IS NULL;

ENAME                                                                                               
----------                                                                                          
SMITH                                                                                               
JONES                                                                                               
BLAKE                                                                                               
CLARK                                                                                               
SCOTT                                                                                               
KING                                                                                                
ADAMS                                                                                               
JAMES                                                                                               
FORD                                                                                                
MILLER                                                                                              

10 rows selected.

SQL> -- 2. LIST ALL THE EMPLOYEES WHO DON'T HAVE A REPORTING MANAGER
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE MGR IS NULL;

ENAME                                                                                               
----------                                                                                          
KING                                                                                                

SQL> -- 3. LIST ALL THE SALESMEN IN DEPT 30
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN'
  4  AND DEPTNO = 30;

ENAME                                                                                               
----------                                                                                          
ALLEN                                                                                               
WARD                                                                                                
MARTIN                                                                                              
TURNER                                                                                              

SQL> -- 4. LIST ALL THE SALESMEN IN DEPT 30 HAVING SALARY > 1500
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN'
  4  AND DEPTNO = 30
  5  AND SAL > 1500;

ENAME                                                                                               
----------                                                                                          
ALLEN                                                                                               

SQL> -- 5. LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'S' OR 'A'
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE 'S%'
  4  OR ENAME LIKE 'A%';

ENAME                                                                                               
----------                                                                                          
SMITH                                                                                               
ALLEN                                                                                               
SCOTT                                                                                               
ADAMS                                                                                               

SQL> -- 6. LIST ALL THE EMPLOYEES EXCEPT THOSE WHO ARE WORKING IN DEPT 10 & 20
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DEPTNO NOT IN (10, 20);

ENAME                                                                                               
----------                                                                                          
ALLEN                                                                                               
WARD                                                                                                
MARTIN                                                                                              
BLAKE                                                                                               
TURNER                                                                                              
JAMES                                                                                               

6 rows selected.

SQL> -- 7. LIST THE EMPLOYEES WHOSE NAME DOES NOT START WITH 'S'
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME NOT LIKE 'S%';

ENAME                                                                                               
----------                                                                                          
ALLEN                                                                                               
WARD                                                                                                
JONES                                                                                               
MARTIN                                                                                              
BLAKE                                                                                               
CLARK                                                                                               
KING                                                                                                
TURNER                                                                                              
ADAMS                                                                                               
JAMES                                                                                               
FORD                                                                                                
MILLER                                                                                              

12 rows selected.

SQL> -- 8. LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE MGR IS NOT NULL
  4  AND DEPTNO = 10;

ENAME                                                                                               
----------                                                                                          
CLARK                                                                                               
MILLER                                                                                              

SQL> -- 9. LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL AND WORKING AS CLERK
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE COMM IS NULL
  4  AND JOB = 'CLERK';

ENAME                                                                                               
----------                                                                                          
SMITH                                                                                               
ADAMS                                                                                               
JAMES                                                                                               
MILLER                                                                                              

SQL> -- 10. LIST ALL THE EMPLOYEES WHO DON'T HAVE A REPORTING MANAGER IN DEPTNO 10 OR 30
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE MGR IS NULL
  4  AND DEPTNO IN (10, 30);

ENAME                                                                                               
----------                                                                                          
KING                                                                                                

SQL> -- 11. LIST ALL THE SALESMEN IN DEPT 30 WITH SAL > 2450
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN'
  4  AND DEPTNO = 30
  5  AND SAL > 2450;

no rows selected

SQL> -- 12. LIST ALL THE ANALYSTS IN DEPT 20 HAVING SALARY > 2500
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE JOB = 'ANALYST'
  4  AND DEPTNO = 20
  5  AND SAL > 2500;

ENAME                                                                                               
----------                                                                                          
SCOTT                                                                                               
FORD                                                                                                

SQL> -- 13. LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'M' OR 'J'
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE 'M%'
  4  OR ENAME LIKE 'J%';

ENAME                                                                                               
----------                                                                                          
JONES                                                                                               
MARTIN                                                                                              
JAMES                                                                                               
MILLER                                                                                              

SQL> -- 14. LIST ALL THE EMPLOYEES WITH ANNUAL SALARY EXCEPT THOSE WHO ARE WORKING IN DEPT 30
SQL> SELECT ENAME, SAL * 12
  2  FROM EMP
  3  WHERE DEPTNO != 30;

ENAME          SAL*12                                                                               
---------- ----------                                                                               
SMITH            9600                                                                               
JONES           35700                                                                               
CLARK           29400                                                                               
SCOTT           36000                                                                               
KING            60000                                                                               
ADAMS           13200                                                                               
FORD            36000                                                                               
MILLER          15600                                                                               

8 rows selected.

SQL> 
SQL> -- 15. LIST THE EMPLOYEES WHOSE NAME DOES NOT END WITH 'ES' OR 'R'
SQL> SELECT *
  2  FROM EMP
  3  WHERE ENAME NOT LIKE '%ES'
  4  AND ENAME NOT LIKE '%R';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

10 rows selected.

SQL> -- 16. LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10 ALONG WITH 10% HIKE IN SALARY
SQL> SELECT ENAME, SAL + (SAL * 10/100)
  2  FROM EMP
  3  WHERE MGR IS NOT NULL
  4  AND DEPTNO = 10;

ENAME      SAL+(SAL*10/100)                                                                         
---------- ----------------                                                                         
CLARK                  2695                                                                         
MILLER                 1430                                                                         

SQL> -- 17. DISPLAY ALL THE SALESMEN HAVING 'E' AS LAST BUT ONE CHARACTER IN ENAME AND SALARY LENGTH 4
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN'
  4  AND ENAME LIKE '%E_'
  5  AND LENGTH(TO_CHAR(SAL)) = 4;

ENAME                                                                                               
----------                                                                                          
ALLEN                                                                                               
TURNER                                                                                              

SQL> -- 18. DISPLAY ALL THE EMPLOYEES WHO JOINED AFTER YEAR 1981
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE HIREDATE > TO_DATE('31-DEC-1981','DD-MON-YYYY');

ENAME                                                                                               
----------                                                                                          
SCOTT                                                                                               
ADAMS                                                                                               
MILLER                                                                                              

SQL> -- 20. LIST EMPLOYEES NOT WORKING AS MANAGERS OR CLERKS IN DEPT 10 & 20 WITH SALARY BETWEEN 1000 AND 3000
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE JOB NOT IN ('MANAGER', 'CLERK')
  4  AND DEPTNO IN (10, 20)
  5  AND SAL BETWEEN 1000 AND 3000;

ENAME                                                                                               
----------                                                                                          
SCOTT                                                                                               
FORD                                                                                                

SQL> -- 21. LIST EMPLOYEES WHOSE SALARY NOT IN 1000-2000 IN DEPT 10,20,30 EXCEPT SALESMEN
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DEPTNO IN (10, 20, 30)
  4  AND SAL NOT BETWEEN 1000 AND 2000
  5  AND JOB != 'SALESMAN';

ENAME                                                                                               
----------                                                                                          
SMITH                                                                                               
JONES                                                                                               
BLAKE                                                                                               
CLARK                                                                                               
SCOTT                                                                                               
KING                                                                                                
JAMES                                                                                               
FORD                                                                                                

8 rows selected.

SQL> -- 22. LIST DEPARTMENT NAMES HAVING LETTER 'O' IN THEIR LOCATIONS AND DNAME
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE LOC LIKE '%O%'
  4  AND DNAME LIKE '%O%';

DNAME                                                                                               
--------------                                                                                      
ACCOUNTING                                                                                          
OPERATIONS                                                                                          

SQL> -- 23. DISPLAY EMPLOYEES WHOSE JOB CONTAINS 'MAN'
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE JOB LIKE '%MAN%';

ENAME                                                                                               
----------                                                                                          
ALLEN                                                                                               
WARD                                                                                                
JONES                                                                                               
MARTIN                                                                                              
BLAKE                                                                                               
CLARK                                                                                               
TURNER                                                                                              

7 rows selected.

SQL> -- 24. LIST EMPLOYEES HIRED AFTER 1982 AND BEFORE 1987
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE EXTRACT(YEAR FROM HIREDATE) > 1981
  4  AND EXTRACT(YEAR FROM HIREDATE) < 1987;

ENAME                                                                                               
----------                                                                                          
MILLER                                                                                              

SQL> -- 25. LIST ALL EMPLOYEES HIRED IN NOVEMBER AND DECEMBER
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE TO_CHAR(HIREDATE,'MON') = 'NOV'
  4  OR TO_CHAR(HIREDATE,'MON') = 'DEC';

ENAME                                                                                               
----------                                                                                          
SMITH                                                                                               
KING                                                                                                
JAMES                                                                                               
FORD                                                                                                

SQL> -- 26. LIST EMPLOYEE NAMES AND COMMISSION FOR EMPLOYEES WHO EARN COMMISSION > SAL
SQL> SELECT ENAME, COMM, SAL
  2  FROM EMP
  3  WHERE NVL(COMM,0) > SAL;

ENAME            COMM        SAL                                                                    
---------- ---------- ----------                                                                    
MARTIN           1400       1250                                                                    

SQL> -- 27. LIST NAME AND DESIGNATION FOR EMPLOYEES HAVING REPORTING MANAGERS AND NAME STARTING WITH 'S'
SQL> SELECT ENAME, JOB
  2  FROM EMP
  3  WHERE MGR IS NOT NULL
  4  AND ENAME LIKE 'S%';

ENAME      JOB                                                                                      
---------- ---------                                                                                
SMITH      CLERK                                                                                    
SCOTT      ANALYST                                                                                  

SQL> -- 28. LIST NAME AND SALARY OF EMPLOYEES IF ANNUAL SAL ENDS WITH '0'
SQL> SELECT ENAME, SAL
  2  FROM EMP
  3  WHERE SAL * 12 LIKE '%0';

ENAME             SAL                                                                               
---------- ----------                                                                               
SMITH             800                                                                               
ALLEN            1600                                                                               
WARD             1250                                                                               
JONES            2975                                                                               
MARTIN           1250                                                                               
BLAKE            2850                                                                               
CLARK            2450                                                                               
SCOTT            3000                                                                               
KING             5000                                                                               
TURNER           1500                                                                               
ADAMS            1100                                                                               
JAMES             950                                                                               
FORD             3000                                                                               
MILLER           1300                                                                               

14 rows selected.

SQL> -- 29. LIST NAME OF EMPLOYEES HAVING AT LEAST 2 L's
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE '%L%L%';

ENAME                                                                                               
----------                                                                                          
ALLEN                                                                                               
MILLER                                                                                              

SQL> -- 30. LIST EMPLOYEES WHOSE NAME STARTS WITH A VOWEL
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE 'A%'
  4  OR ENAME LIKE 'E%'
  5  OR ENAME LIKE 'I%'
  6  OR ENAME LIKE 'O%'
  7  OR ENAME LIKE 'U%';

ENAME                                                                                               
----------                                                                                          
ALLEN                                                                                               
ADAMS                                                                                               

SQL> -- 19.DISPLAY ALL THE EMPLOYEE WHO ARE JOINED IN FEB.
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE TO_CHAR(HIREDATE, 'MON') = 'FEB'
  4  ;

ENAME                                                                                               
----------                                                                                          
ALLEN                                                                                               
WARD                                                                                                

SQL> SPOOL OFF
