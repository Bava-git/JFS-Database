CREATE DATABASE JFS_Task_Database_MySQL;

USE JFS_Task_Database_MySQL;

CREATE TABLE employeeslist (
    empno INT PRIMARY KEY,
    ename VARCHAR(100),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10, 2),
    comm DECIMAL(10, 2),
    deptno INT
);

insert into `employeeslist` 
values
(8469, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, null, 20),
(8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30),
(8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500, 30),
(8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, null, 20),
(8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30),
(8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, null, 30),
(8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, null, 10),
(8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, null, 20),
(8839, 'AMIR', 'PRESIDENT', null, '1991-11-18', 5000.00, null, 10),
(8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);

-- A. Write a query to display EName and Sal of employees whose salary are greater than or equal to 2200? 
select ename, sal
from employeeslist
where sal >= 2200;

-- B. Write a query to display details of employees who are not getting commission? 
select empno, ename, comm
from employeeslist
where comm is null;

-- C. Write a query to display employee name and salary of those employees who don't have their salary in the range of 2500 to 4000? 
select ename, sal
from employeeslist
where sal not between 2500 and 4000;

-- D. Write a query to display the name, job title and salary of employees who don't have a manager? 
select ename, job, sal
from employeeslist
where mgr is null;

-- E. Write a query to display the name of an employee whose name contains "A" as third alphabet? 
select ename
from employeeslist
where ename like '__A%';

-- F. Write a query to display the name of an employee whose name contains "T" as the last alphabet?
select ename
from employeeslist
where ename like '%%T'; 




