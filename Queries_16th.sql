select * from employees;

------ Group Functions 

SELECT AVG(salary), MAX(salary),
MIN(salary), SUM(salary)
FROM employees
WHERE job_id LIKE '%REP%';

SELECT MIN(hire_date), MAX(hire_date)
FROM employees;

SELECT COUNT(*)
FROM employees;

SELECT COUNT(*)
 FROM employees where department_id=50;
 
 SELECT COUNT(commission_pct)
FROM employees
WHERE department_id = 80;

select count(distinct department_id) from employees;

select avg(nvl(commission_pct,0)) Average
from employees;

--- Clauses

SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id ;

SELECT department_id
FROM employees
group by department_id order by department_id;


SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary)>10000 ;

SELECT department_id,sum(salary) payroll
FROM employees
where job_id not like '%REP%'
GROUP BY department_id
HAVING sum(salary)>13000 
order by sum(salary);

----- Nested functions
SELECT MAX(AVG(salary))
FROM employees
GROUP BY department_id;

--------- Joins

