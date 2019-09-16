describe employees ;

select * from employees;

SET SERVEROUTPUT ON
DECLARE
V_FIRST_NAME VARCHAR(13);
BEGIN
V_FIRST_NAME :='VASANTHA';
DBMS_OUTPUT.PUT_LINE('THE FIRST NAME IS:'||V_FIRST_NAME);
END;
select *
from DEPARTMENTS
select department_id,location_id from departments;
select sysdate from dual;
select ROUND(15.193) from dual;
select * from DEPARTMENTS 
order by DEPARTMENT_ID desc;
select last_name,salary,12*(salary+100) 
from employees;
select last_name,job_id,salary,COMMISSION_PCT
from employees;
select last_name as "NAME" ,commission_pct as "COMMISION" 
from employees;
select last_name || job_id as "Employees"
from employees;
select first_name || ' is a'|| last_name as "Employees"
from employees;
select department_name || q'[Department's Manager Id:]'
   as "dep" from DEPARTMENTS;
select employee_id,last_name,first_name,job_id,department_id from employees;
select last_name,job_id,department_id
from employees
where last_name='Whalen';
select last_name,salary from employees where department_id in(100,101,200);
select first_name from employees where last_name like '%s';
select employee_id,last_name,job_id,salary 
from employees
where salary >=10000
or job_id like '%man%';
select last_name,job_id
from employees where job_id
not in ('IT_PROG');
select last_name,first_name,hire_date from employees order by hire_date;
select last_name,first_name,hire_date from employees order by hire_date desc;
select last_name,first_name,hire_date from employees order by 2
select last_name,first_name,salary,hire_date from employees order by 3;
select last_name,first_name,hire_date from employees fetch first 5 rows only;
select employee_id from employees;
select employee_id,last_name,salary,department_id
from employees 
where employee_id=&employee_num;
select job_id from employees;
set verify on 
define employee_num=106;
select employee_id,last_name,salary
from employees 
where employee_id=&employee_num;

--------------------

select * from employees where lower(email)='sking';

select concat('hello ','World!!!!!') as Concatenation from dual;

select substr('Welcome to Oracle SQL',1,10) from dual;

select length('Welcome to Oracle SQL') from dual;

select instr('Welcome to Oracle SQL','W') from dual;

select lpad('Welcome to Oracle SQL',40,'*') from dual;

select rpad('Welcome to Oracle SQL',40,'*') from dual;

select * from employees where substr(job_id,4)='REP';

select employee_id,concat(first_name,last_name)Name,
length(last_name),
instr(last_name,'a') as " Contains 'a'? "
from employees
where substr(last_name,-1,1)='n';

------------ Nested Queries--------

select last_name,upper(concat(substr(last_name,1,8),'_US'))
from employees
where department_id=40;

select round(45.123,2) from dual;
select round(45678.123,-2) from dual;

select floor(45.123) from dual;

select ceil(45.123) from dual;

select trunc(45.123,2) from dual;

select mod(105,9) from dual;

select * from employees where mod(employee_id,2)=0;

----------------------DATES AND Calendar
select first_name,last_name from employees
where hire_date > '01-feb-2000';

select first_name,last_name from employees
where hire_date > '01-feb-00';

select last_name,(sysdate-hire_date)/7 as WEEKS
from employees
where department_id=90;

select months_between('01-sep-95','11-jan-94') from dual;

select add_months('31-jan-96',1) from dual;

select next_day('31-jan-96',1) from dual;

select last_day('01-feb-98') from dual;

select round(sysdate,'month') from  dual;

select round(sysdate,'year') from  dual;

select trunc(sysdate,'month') from  dual;

select trunc(sysdate,'year') from  dual;
