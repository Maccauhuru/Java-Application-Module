SELECT table_name FROM user_tables ;
DESC user_tables;
DESC departments;

SELECT employee_id,
  first_name,
  last_name,
  salary AS Base_Salary,
  COMMISSION_PCT AS Salary_Commission,
  salary * 2 AS Adjusted_Salary
FROM EMPLOYEES
ORDER BY LAST_NAME ASC;


SELECT * FROM DEPARTMENTS
ORDER BY LOCATION_ID;

SELECT DISTINCT location_id
FROM DEPARTMENTS
ORDER BY LOCATION_ID;



DESC LOCATIONS;

select first_name,
last_name,
hire_date,
salary 
FROM EMPLOYEES
where HIRE_DATE like '%05'
;

SELECT last_name FROM EMPLOYEES
WHERE last_name like '_a%'
ORDER BY LAST_NAME DESC;

Desc employees;


SELECT employee_id,
  first_name,
  last_name,
  COMMISSION_PCT AS Salary_Commission
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL;

SELECT EMPLOYEE_ID,
first_name,
Last_name
from EMPLOYEES
where LAST_NAME = 'King'
AND FIRST_NAME = 'Steven'
;
--Making use of a compound selct statement with an Order By clause
Select first_name,last_name,manager_id,salary
from EMPLOYEES
where SALARY >= 15000
and MANAGER_ID is not null
order by salary desc
;

select first_name,last_name from EMPLOYEES
where LAST_NAME IN ('Chung','Ozer' , 'King')
and COMMISSION_PCT is null
;
--Ampersand Substitution Example 
SELECT employee_id,
first_name,
last_name,
salary from EMPLOYEES
where EMPLOYEE_ID = &eid
;

SELECT employee_id,
first_name,
last_name,
salary from EMPLOYEES
where JOB_ID = '&Job_Title'
;

select job_id from employees;

--Making use of ampersand substitution in the actual SELECT stament
--use department_id, Job_id in the substitution
SELECT first_name,last_name,&&prompt_column from EMPLOYEES
ORDER BY &&prompt_column; 

--Making use of the DEFINE 
DEFINE eid = 117
SELECT employee_id,first_name,last_name,department_id
FROM EMPLOYEES
WHERE EMPLOYEE_ID = &eid;

--Single Row Functions
SELECT table_name FROM USER_TABLES;

SELECT * FROM REGIONS;
SELECT * FROM LOCATIONS;
SELECT * FROM DEPARTMENTS;
SELECT * FROM JOBS;


SELECT JOB_ID,LOWER(JOB_ID),INITCAP(JOB_ID),JOB_TITLE,UPPER(JOB_TITLE)
FROM JOBS;

--The DUAL table

Describe dual;

SELECT DUMMY FROM DUAL;

SELECT USER FROM DUAL;

SELECT SYSDATE FROM DUAL;

SELECT 4 + 3 AS SUM FROM DUAL;

SELECT LENGTH('ME AND MY CRAZY WORLD!!!') AS TEXTLENGTH FROM DUAL;

--Making use of the SUBSTR Function

Select * FROM JOBS;

Select Lower(job_id),
job_title,
SUBSTR(JOB_TITLE,1,11),
SUBSTR(JOB_TITLE,11)
from jobs;

--Making Use of the INSTR function

SELECT job_title,
INSTR(Job_title,'Sales') AS Sales_Occur
FROM Jobs
order by Sales_Occur DESC;

Desc employees;

--CONCACTENATION EXAMPLE
SELECT FIRST_NAME||' '||LAST_NAME "Full Name",SALARY,COMMISSION_PCT "Comm %",MANAGER_ID "Manager ID"
FROM EMPLOYEES;

Desc departments;
desc employees;
desc user_constraints;
select * from user_constraints;


select constraint_name,constraint_type,table_name from user_constraints where
table_name = 'DEPARTMENTS'
;


--use this to see all column  names for a particular user e.g me HR
select * from user_cons_columns;

--position is the column that has the certain constraint attached to it e.g 1 Foreign key see EMPLOYEE_ID
Select column_name,position,constraint_name from
user_cons_columns;

--Creating an EquiJoin OR Inner Join

SELECT e.employee_ID,e.Last_Name,d.Department_Name
FROM EMPLOYEES e INNER JOIN DEPARTMENTS d
USING (DEPARTMENT_ID)
ORDER BY employee_ID;





-------------------------------------------------------------------------------
--ORACLE EXAM BOOK EXAMPLES
-------------------------------------------------------------------------------
--Using the alternate Quote operator

SELECT q'<igiuguohohpihpiipijpijp>' "Quotables" from dual;

SELECT q'[the world is yours]' "Quotables" from dual;

SELECT q'Xtufedwviy'wevciywe'vciywevc'iywvciywvc'wvcwX' "Word Count" from Dual;

select q'R What a DayR' as "Quotable qRRq" from Dual;

--A structural definition of a table can be obtained using the DESCRIBE Command
--The DESC can run without an ending semi-colo but it is good practise to always include it
DESCRIBE JOB_HISTORY;
DESC EMPLOYEES;
Desc DUAL

--Any arithmetic calculation with the Null value always returns a NULL
--Notice how the character concatenation operators ignore NULL below
SELECT FIRST_NAME||NULL||LAST_NAME "Full Name No Spaces",
COMMISSION_PCT "Commision PCT",
COMMISSION_PCT + EMPLOYEE_ID + 10 "Null Arithmetric",
10/COMMISSION_PCT "Division by Null" 
FROM EMPLOYEES; 

select * from JOB_HISTORY;

--For how many years were staff employed while fulfilling these job roles and what were their EMPLOYEE_ID, JOB_ID,START_DATE, and END_DATE values?

select employee_id BirdMan,job_id JailNo,start_date StartOfDeath,end_date EndOfDays,((END_DATE-START_DATE)+1)/365.25 YearsINjail
from JOB_HISTORY;

--Query the JOBS table and return a single expression of the form The Job Id for the <job_title’s> job is: <job_id>.
select * from Jobs;

Select 'The JOB ID for the '||JOB_TITLE||'''s Job is '||JOB_ID AS "Job Description" from JOBS;

--Using the DUAL table, calculate the area of a circle with radius 6000 units, with pi being approximately 22/7. Use the formula: Area = pi × radius ×
--radius. Alias the result as “Area.”
--a new line can be added after a statement and a forward slash can be used to execute the statement(see below)
Select (22/7)*6000*6000 AS "Area of a Circle" from DUAL
/

SELECT * FROM REGIONS;
SELECT 6*6 "Multiplication Table" from DUAL;
--It does not do the computation when enclosed in strings ''
SELECT '6*6' "Multiplication Table" from DUAL;

--Retrieve the LAST_NAME and SALARY values of the employees who earn $10,000
SELECT LAST_NAME "Last Name",SALARY 
FROM EMPLOYEES
WHERE SALARY=10000;

SELECT LAST_NAME "Last Name",SALARY 
FROM EMPLOYEES
WHERE SALARY>'10000';

--A numeric column can be compared to another numeric column in the same row to construct a WHERE clause condition,
--zero rows retuned as there is no overlap
select last_name, salary from employees
where salary = department_id;

--The WHERE Clause  permits expressions on either side of the comparison operator
select last_name, salary from employees
where salary = department_id*100;

select last_name, salary from employees
where salary/10 = department_id*10;

--Character-based conditions are not limited to comparing column values with literals. 
--They may also be specified using other character columns and expressions.

select employee_id, job_id
from employees
where last_name <> first_name;

--Concatenates the string literal “A” to the LAST_NAME and FIRST_NAME columns. This expression is compared to the literal “A King,”
select employee_id, job_id
from employees
where 'A '||last_name = 'A King';

--Demonstrates that character expressions may be placed on both sides of the conditional operator
select employee_id, job_id
from employees
WHERE first_name||' '||last_name = last_name||' '||first_name;

--illustrates that literal expressions may also be placed on the left of the conditional operator
select employee_id, job_id
from employees
WHERE 'SA_REP'||'King' = job_id||last_name;

--illustrates that literal expressions may also be placed on the left of the conditional operator
select employee_id, job_id
from employees
WHERE job_id||last_name = 'SA_REP'||'King' 
OR
job_id||last_name = 'AD_PRES'||'King';

--Date Based Conditions EXAMPLES :
select employee_id from job_history
where end_date = start_date +282;

select employee_id from job_history
where start_date = '13-JAN-2001';

select employee_id from job_history
where start_date = '13-JAN-01';

select employee_id from job_history
where start_date = '1-OCT-97';

select start_date,employee_id from job_history
where start_date + 30 = '31-JAN-99';

Select start_date from job_history;

--Making use of the equality operator to compare columns , expressions & literal values
select last_name, salary
from employees
where job_id='SA_REP';

--Making use of the equality operator on strings
select last_name, salary
from employees
where LAST_NAME<'Simba';

--Making use of the BETWEEN operator 
SELECT LAST_NAME, SALARY 
FROM EMPLOYEES
WHERE SALARY BETWEEN 3000 AND 6500;

--Making use of the BETWEEN operator for DATE Range
select first_name, hire_date from employees
where hire_date between '24-JUL-1994' and '07-JUN-1996';

--For a row to be returned by this query, the date literal 24-JUL-1994 must fall
--between the row’s HIRE_DATE column value plus 30 days and the date literal 07-JUN-1996
select first_name, hire_date from employees
where '24-JUL-1994' between hire_date+30 and '07-JUN-1996';

--Comparison using the IN operator example
select last_name "Last Name", SALARY "Take Home $$" from employees
where salary in (1000,4000,6000);



