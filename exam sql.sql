1. select SUBSTR(first_name,1,3) from employees
2. select E.first_name, E.last_name, E.salary FROM employees E JOIN employees S ON E.salary < S.salary AND S.employee_id = 182;
3.  SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name,
       j.job_title,
       jh.*
  FROM employees e
  INNER JOIN (SELECT MAX(start_date) AS starting_date,
                     MAX(end_date) AS ending_date,
                     employee_id
                FROM job_history
                GROUP BY employee_id) jh
    ON e.employee_id = jh.employee_id
  INNER JOIN jobs j
    ON e.job_id = j.job_id
WHERE e.commission_pct is null;
4.SELECT f1.JOB_TITLE,f2.avg_salary from hr.jobs f1
inner join (select job_id,avg(salary) avg_salary from hr.employees
group by job_id) f2
on f1.job_id=f2.job_id
order by avg_salary DESC
FETCH FIRST 5 ROWS ONLY

5.select first_name||' '||last_name full_name, salary from employees where salary>5000
union
(select first_name||' '||last_name full_name, salary from employees where salary<2000)
      
6.  select * from (select extract(year from hire_date) year,department_id
from employees e where department_id in (20,50,80,90)) pivot (count(*) for department_id in(20,50,80,90)) order by year desc

7. select e.first_name,  e.last_name, d.department_name, j.job_title, e.salary,
RANK() OVER (PARTITION BY JOB_TITLE ORDER BY salary desc) RANK
FROM EMPLOYEES E
JOIN JOBS J ON j.JOB_ID = e.JOB_ID
jOIN DEPARTMENTS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
ORDER BY j.JOB_TITLE,RANK,D.DEPARTMENT_NAME;
      
     
 

