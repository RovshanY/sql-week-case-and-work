1. Display employees who joined in the month of May.
    select first_name ,to_char(hire_date,'dd-MON-yy') from hr.employees where to_char(hire_date,'MON')='MAY'
2. Display employees who joined in the current year.
    select first_name,to_char(hire_date,'dd-MON-yy') from hr.employees where to_char(hire_date,'yyyy')='2021'
3. Display the number of days between system date and 1st January 2011.
    select round (sysdate-to_date('01-Jan-2011','dd-MON-yy'),0) as number_of_days from dual;
4. Display maximum salary of employees.
    select max (salary) from hr.employees
5. Display number of employees in each department.
   SELECT department_id, COUNT(*) FROM hr.employees GROUP BY department_id;
6. Display number of employees who joined after 15th of month.
   select * from hr.employees where to_char(hire_date,'dd-MON')>'15-JAN'
7. Display average salary of employees in each department who have commission percentage.
    SELECT department_id, AVG(salary) FROM hr.employees WHERE commission_pct IS NOT NULL GROUP BY department_id;
8. Display job ID for jobs with average salary more than 10000.
   SELECT job_id, AVG(salary) FROM hr.employees GROUP BY job_id HAVING AVG(salary)>10000;
9. Display job ID, number of employees, sum of salary, and difference between the highest salary and the lowest salary of the employees for all jobs.
   SELECT job_id, COUNT(*), SUM(salary),MAX(salary)-MIN(salary) AS salary_difference FROM hr.employees GROUP BY job_id;
10.Display manager ID and number of employees managed by the manager.
   SELECT manager_id, COUNT(*) FROM hr.employees GROUP BY manager_id;
11.Search for the key differences between CHAR and VARCHAR data types.
CREATE TABLE Student(Name VARCHAR(30), Gender CHAR(6));
INSERT into Student VALUES('Herry', 'Male');
INSERT into Student VALUES('Mahi', 'Female');
SELECT LENGTH(Gender) FROM Student;
   
