31) Display the
maximum salary being paid to CLERK. 


select max(salary) from employees
where job_id in (select job_id from jobs
                 where job_title = 'CLERK')




32) Display the maximum salary being paid
to depart number 20. 

select max(salary) from employees
where department_id = 20





33) Display the minimum salary being paid
to any SALESMAN. 


select min(salary) from employees
where job_id in (select job_id from jobs
                 where job_title = 'SALESMAN')




34) Display the average salary drawn by
MANAGERS. 


select avg(salary) from employees
where manager_id is not null




35) Display the total salary drawn by
ANALYST working in depart number 40. 

select min(salary) from employees
where job_id in (select job_id from jobs
                 where job_title = 'ANALYST') and department_id = 40





36) Display the names of the employee in
order of salary i.e the name of  the
employee earning lowest salary should appear first. 


select first_name from employees
order by salary




37) Display the names of the employee in
descending order of salary. 


select first_name from employees
order by salary desc




38) Display the names of the employee in
order of employee name. 

select first_name from employees
order by first_name





39) Display empno,ename,deptno,sal sort
the output first base on name and 
within name by deptno and with in deptno by sal. 

select employee_id,first_name,department_id,salary from employees
order by first_name,department_id,salary





40) Display the name of the employee
along with their annual salary(sal*12).The name of the employee earning
highest annual salary should apper first. 


select first_name , (salary*12) as Annual_Salary from employees
order by Annual_Salary desc




41) Display name,salary,hra,pf,da,total
salary for each employee. The  output
should be in the order of total salary,hra 15% of salary,da 10% of salary,pf
5%  salary,total salary will
be(salary+hra+da)-pf. 

select first_name,salary,(salary/15) as hra,(salary/5) as pf,(salary/10) as da,(hra+da+salary-pf) as Total_Salary from employees
order by salary desc





42) Display depart numbers and total
number of employees working in each 
department. 


select department_id , count(department_id) from employees
group by department_id




43) Display the various jobs and total
number of employees within each job 
group. 


select job_title , count(job_title) from jobs
group by job_title



44) Display the depart numbers and total
salary for each department. 


select department_id , sum(salary) from employees
group by department_id




45) Display the depart numbers and max
salary for each department. 

select department_id , max(salary) from employees
group by department_id





46) Display the various jobs and total
salary for each job 

select job_title , sum(salary) from jobs left outer join employees
on jobs.job_id = employees.job_id
group by job_title

 



47) Display the various jobs and total
salary for each job 

select job_title , sum(salary) from jobs left outer join employees
on jobs.job_id = employees.job_id
group by job_title

 



48) Display the depart numbers with more
than three employees in each dept. 

select department_id from employees
group by department_id
having count(department_id) > 3

 



49) Display the various jobs along with
total salary for each of the jobs 
Where total salary is greater than 40000. 

select job_title , sum(salary) from jobs left outer join employees
on jobs.job_id = employees.job_id
group by job_title
having sum(salary)>40000





50) Display the various jobs along with
total number of employees in each  job.
The output should contain only those jobs with more than three
employees. 

select job_title , count(employee_id) from jobs left outer join employees
on jobs.job_id = employees.job_id
group by job_title
having  count(employee_id) > 3





51) Display the name of the employee who
earns highest salary. 

select top 1 First_name from employees
order by salary desc

 



52) Display the employee number and name
for employee working as clerk and 
earning highest salary among clerks. 

select top 1 employee_id,First_name from employees
where job_id in(select job_id from jobs
                where job_title = 'CLERK')
order by salary desc





53) Display the names of salesman who
earns a salary more than the highest 
salary of any clerk. 

select job_title from jobs 
    where job_title = 'SALESMAN' and salary >(select top 1 max_salary from jobs
                                                    where job_title = 'CLERK'
                                                    order by max_salary desc)




54) Display the names of clerks who earn
a salary more than the lowest 
Salary  of any salesman. 


select job_title from jobs 
    where job_title = 'CLERK' and salary > 4(select top 1 min_salary from jobs
                                                    where job_title = 'SALESMAN'
                                                    order by min_salary )




Display the names of employees who earn a
salary more than that of  Jones or that
of salary Grether than   that of
scott. 


select first_name from employees
where salary > (select max(salary) from employees
                where first_name = 'John') or (select max(salary) from employees
                where first_name in('Scott'))




55) Display the names of the employees
who earn highest salary in their 
respective departments. 

select distinct(department_name) from departments
        where department_id in(select department_id from employees
                                group by department_id
                                order by salary)





56) Display the names of the employees
who earn highest salaries in their 
respective job groups. 







57) Display the employee names who are
working in accounting department. 

select first_name from employees
where department_id in(select department_id from departments
                        where department_name = 'Accounting')





58) Display the employee names who are
working in Chicago. 


select first_name from employees
where city = 'Chicago'




59) Display the Job groups having total
salary greater than the maximum  salary
for managers. 







60) Display the names of employees from
department number 10 with salary 
grether than that of any employee working in other department.

