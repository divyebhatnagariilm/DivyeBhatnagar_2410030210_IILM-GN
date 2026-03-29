-- (a) Display empno, ename, deptno with department name  
SELECT empno, ename, deptno,
CASE deptno
    WHEN 10 THEN 'ACCOUNTING'
    WHEN 20 THEN 'RESEARCH'
    WHEN 30 THEN 'SALES'
    WHEN 40 THEN 'OPERATIONS'
END AS department_name
FROM employee;


-- (b) Display your age in days  
SELECT DATEDIFF(CURDATE(), '2006-01-27') AS Age_in_Days;


-- (c) Display your age in months  
SELECT TIMESTAMPDIFF(MONTH, '2006-01-27', CURDATE()) AS Age_in_Months;


-- (d) Display current date in format  
SELECT DATE_FORMAT(CURDATE(), '%D %M %W %Y') AS Formatted_Date;


-- (e) Display first 2 characters of hiredate and last 2 characters of salary  
SELECT ename,
CONCAT(DATE_FORMAT(hiredate,'%d'), RIGHT(sal,2)) AS Required_Output
FROM employee;


-- (f) Display: Scott has joined the company on Wednesday 13th August 1990  
SELECT CONCAT(ename, ' has joined the company on ',
DATE_FORMAT(hiredate, '%W %D %M %Y')) AS Joining_Info
FROM employee
WHERE ename = 'SCOTT';


-- (g) Find the nearest Saturday after current date  
SELECT DATE_ADD(CURDATE(),
INTERVAL (7 - WEEKDAY(CURDATE()) + 5) % 7 DAY) AS Next_Saturday;


-- (h) Display current time  
SELECT CURTIME();


-- (i) Display date three months before current date  
SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH);


-- (j) Display employees who joined in December  
SELECT *
FROM employee
WHERE MONTH(hiredate) = 12;


-- (k) Display employees with first 2 chars of hiredate and last 2 chars of salary  
SELECT ename,
CONCAT(DATE_FORMAT(hiredate,'%d'), RIGHT(sal,2)) AS Output_Value
FROM employee;


-- (l) Display employees whose 10% salary = year of joining  
SELECT *
FROM employee
WHERE sal * 0.10 = YEAR(hiredate);


-- (m) Display employees who joined before 15th of the month  
SELECT *
FROM employee
WHERE DAY(hiredate) < 15;


-- (n) Display employees who joined before 15th (same as m)  
SELECT *
FROM employee
WHERE DAY(hiredate) < 15;


-- (o) Display employees where deptno equals day of joining  
SELECT *
FROM employee
WHERE deptno = DAY(hiredate);