 1) Display the details of all employees 
    SQL:   Select * from employees





1) Display the
details of all employees 

select * from employees





2) Display the depart information from
department table 

select * from departments

 



3) Display the name and job for all the
employees 

select first_name,last_name,job_title from employees , jobs
where employees.job_id = jobs.job_id

 



4) Display the name and salary  for all the employees 

select First_name ,last_name, salary from employees
 



5) Display the employee no and
totalsalary  for all the employees 

select employee_id,salary from employees

 



6) Display the employee name and annual
salary for all employees. 

select first_name,salary*12 as Annual_Salary from employees

 



7) Display the names of all the employees
who are working in depart number 10. 


select First_name from employees
where  DEPARTMENT_ID = 10
 



8) Display the names of all the employees
who are working as clerks and  drawing
a salary more than 3000. 

select first_name from employees
where job_id in(select job_id from jobs
                where job_title like '%Clerk') and salary>3000

   



9) Display the employee number and
name  who are earning comm. 

select employee_id from employees
where commission is not null
 



10) Display the employee number and
name  who do not earn any comm. 

select employee_id from employees
where commission is null

 



11) Display the names of employees who
are working as clerks, salesman or 
analyst and drawing a salary more than 3000. 


select first_name from employees
where job_id in(select job_id from jobs
                where job_title in('clerk','salesman','Analyst')) and salary>3000




12) Display the names of the employees
who are working in the company for  the
past 5 years; 

select FIRST_NAME from employees 
where hire_date < '1995-01-01'





13) Display the list of employees who
have joined the company before 
30-JUN-90 or after 31-DEC-90. 

select FIRST_NAME from employees 
where hire_date between '1990-06-30' and '1990-12-31'





14) Display current Date. 

select current_date;

 



15) Display the list of all users in your
database (use catalog table). 




16) Display the names of all tables from
current user; 


select * from public where owner = 'ACCOUNTADMIN'
 



17) Display the name of the current
user. 



 



18) Display the names of employees
working in depart number 10 or 20 or 40 
or employees working as CLERKS,SALESMAN or ANALYST. 

select first_name from employees
where department_id in(select department_id from departments
                            where department_id in(10,20,40)) or
                 job_id in(select job_id from jobs 
                            where job_title in('CLERK','SALESMAN','ANALYST'))





19) Display the names of employees whose
name starts with alaphabet S. 


select first_name from employees
where first_name like('S%')
 



20) Display the Employee names for
employees whose name ends with alaphabet S. 

select first_name from employees
where first_name like('%s')

 



21) Display the names of employees whose
names have second alphabet A in  their
names. 

select first_name from employees
where first_name like('_a%')





22) select the names of the employee
whose names is exactly five characters 
in length. 


select first_name from employees
where length(first_name) = 5



 



23) Display the names of the employee who
are not working as MANAGERS. 

select first_name from employees 
where manager_id is null





24) Display the names of the employee who
are not working as SALESMAN OR  CLERK
OR ANALYST. 


select first_name from employees
where job_id in(select job_id from jobs
                where job_title not in('SALESMAN','CLERK','ANALYST'))




25) Display all rows from emp table.The
system should wait after every  screen
full of informaction. 








26) Display the total number of employee
working in the company. 

select count(*) from employees





27) Display the total salary beiging paid
to all employees. 

select (salary+commission) as total_salary from employees





28) Display the maximum salary from emp
table. 


select max(salary) from employees




29) Display the minimum salary from emp
table. 

select min(salary) from employees






30) Display the average salary from emp
table.

select avg(salary) from employees
