SQL> CL SCR

SQL> SELECT ENAME, SAL
  2  FROM EMP;

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

ENAME             SAL                                                           
---------- ----------                                                           
JAMES             950                                                           
FORD             3000                                                           
MILLER           1300                                                           

14 rows selected.

SQL> SELECT *
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300      
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                 
        20                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400      
        30                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                 
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                 
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            17-NOV-81       5000                 
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0      
        30                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                 
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 03-DEC-81        950                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 23-JAN-82       1300                 
        10                                                                      
                                                                                

14 rows selected.

SQL> SET PAGES 100 LINES 100
SQL> SELECT *
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

14 rows selected.

SQL> SELECT ENAME, 6 * SAL
  2  FROM EMP
  3  ;

ENAME           6*SAL                                                                               
---------- ----------                                                                               
SMITH            4800                                                                               
ALLEN            9600                                                                               
WARD             7500                                                                               
JONES           17850                                                                               
MARTIN           7500                                                                               
BLAKE           17100                                                                               
CLARK           14700                                                                               
SCOTT           18000                                                                               
KING            30000                                                                               
TURNER           9000                                                                               
ADAMS            6600                                                                               
JAMES            5700                                                                               
FORD            18000                                                                               
MILLER           7800                                                                               

14 rows selected.

SQL> SELECT EMP.*, 2000 + SAL
  2  FROM EMP
  3  ;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO   2000+SAL    
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------    
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       2800    
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       3600    
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       3250    
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       4975    
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       3250    
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       4850    
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       4450    
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       5000    
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7000    
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       3500    
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       3100    
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       2950    
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       5000    
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       3300    

14 rows selected.

SQL> SELECT ENAME, SAL, SAL * (0.1)
  2  FROM EMP;

ENAME             SAL  SAL*(0.1)                                                                    
---------- ---------- ----------                                                                    
SMITH             800         80                                                                    
ALLEN            1600        160                                                                    
WARD             1250        125                                                                    
JONES            2975      297.5                                                                    
MARTIN           1250        125                                                                    
BLAKE            2850        285                                                                    
CLARK            2450        245                                                                    
SCOTT            3000        300                                                                    
KING             5000        500                                                                    
TURNER           1500        150                                                                    
ADAMS            1100        110                                                                    
JAMES             950         95                                                                    
FORD             3000        300                                                                    
MILLER           1300        130                                                                    

14 rows selected.

SQL> SELECT ENAME, SAL, SAL * (1.1)
  2  FROM EMP;

ENAME             SAL  SAL*(1.1)                                                                    
---------- ---------- ----------                                                                    
SMITH             800        880                                                                    
ALLEN            1600       1760                                                                    
WARD             1250       1375                                                                    
JONES            2975     3272.5                                                                    
MARTIN           1250       1375                                                                    
BLAKE            2850       3135                                                                    
CLARK            2450       2695                                                                    
SCOTT            3000       3300                                                                    
KING             5000       5500                                                                    
TURNER           1500       1650                                                                    
ADAMS            1100       1210                                                                    
JAMES             950       1045                                                                    
FORD             3000       3300                                                                    
MILLER           1300       1430                                                                    

14 rows selected.

SQL> SELECT ENAME, SAL - (25/100)
  2  FROM EMP;

ENAME      SAL-(25/100)                                                                             
---------- ------------                                                                             
SMITH            799.75                                                                             
ALLEN           1599.75                                                                             
WARD            1249.75                                                                             
JONES           2974.75                                                                             
MARTIN          1249.75                                                                             
BLAKE           2849.75                                                                             
CLARK           2449.75                                                                             
SCOTT           2999.75                                                                             
KING            4999.75                                                                             
TURNER          1499.75                                                                             
ADAMS           1099.75                                                                             
JAMES            949.75                                                                             
FORD            2999.75                                                                             
MILLER          1299.75                                                                             

14 rows selected.

SQL> SELECT ENAME, SAL - (SAL * (25/100))
  2  FROM EMP;

ENAME      SAL-(SAL*(25/100))                                                                       
---------- ------------------                                                                       
SMITH                     600                                                                       
ALLEN                    1200                                                                       
WARD                    937.5                                                                       
JONES                 2231.25                                                                       
MARTIN                  937.5                                                                       
BLAKE                  2137.5                                                                       
CLARK                  1837.5                                                                       
SCOTT                    2250                                                                       
KING                     3750                                                                       
TURNER                   1125                                                                       
ADAMS                     825                                                                       
JAMES                   712.5                                                                       
FORD                     2250                                                                       
MILLER                    975                                                                       

14 rows selected.

SQL> SELECT ENAME, SAL, SAL + 50
  2  FROM EMP;

ENAME             SAL     SAL+50                                                                    
---------- ---------- ----------                                                                    
SMITH             800        850                                                                    
ALLEN            1600       1650                                                                    
WARD             1250       1300                                                                    
JONES            2975       3025                                                                    
MARTIN           1250       1300                                                                    
BLAKE            2850       2900                                                                    
CLARK            2450       2500                                                                    
SCOTT            3000       3050                                                                    
KING             5000       5050                                                                    
TURNER           1500       1550                                                                    
ADAMS            1100       1150                                                                    
JAMES             950       1000                                                                    
FORD             3000       3050                                                                    
MILLER           1300       1350                                                                    

14 rows selected.

SQL> SELECT ENAME, SAL - (SAL * 0.1)
  2  FROM EMP
  3  ;

ENAME      SAL-(SAL*0.1)                                                                            
---------- -------------                                                                            
SMITH                720                                                                            
ALLEN               1440                                                                            
WARD                1125                                                                            
JONES             2677.5                                                                            
MARTIN              1125                                                                            
BLAKE               2565                                                                            
CLARK               2205                                                                            
SCOTT               2700                                                                            
KING                4500                                                                            
TURNER              1350                                                                            
ADAMS                990                                                                            
JAMES                855                                                                            
FORD                2700                                                                            
MILLER              1170                                                                            

14 rows selected.

SQL> SELECT SAL + COMM
  2  FROM EMP
  3  ;

  SAL+COMM                                                                                          
----------                                                                                          
                                                                                                    
      1900                                                                                          
      1750                                                                                          
                                                                                                    
      2650                                                                                          
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
      1500                                                                                          
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    

14 rows selected.

SQL> SELECT SAL + COALESCE(COMM, 0)
  2  FROM EMP;

SAL+COALESCE(COMM,0)                                                                                
--------------------                                                                                
                 800                                                                                
                1900                                                                                
                1750                                                                                
                2975                                                                                
                2650                                                                                
                2850                                                                                
                2450                                                                                
                3000                                                                                
                5000                                                                                
                1500                                                                                
                1100                                                                                
                 950                                                                                
                3000                                                                                
                1300                                                                                

14 rows selected.

SQL> SELECT *
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

14 rows selected.

SQL> SELECT ENAME, JOB, SAL - 100
  2  FROM EMP
  3  ;

ENAME      JOB          SAL-100                                                                     
---------- --------- ----------                                                                     
SMITH      CLERK            700                                                                     
ALLEN      SALESMAN        1500                                                                     
WARD       SALESMAN        1150                                                                     
JONES      MANAGER         2875                                                                     
MARTIN     SALESMAN        1150                                                                     
BLAKE      MANAGER         2750                                                                     
CLARK      MANAGER         2350                                                                     
SCOTT      ANALYST         2900                                                                     
KING       PRESIDENT       4900                                                                     
TURNER     SALESMAN        1400                                                                     
ADAMS      CLERK           1000                                                                     
JAMES      CLERK            850                                                                     
FORD       ANALYST         2900                                                                     
MILLER     CLERK           1200                                                                     

14 rows selected.

SQL> SPOOL OFF
