TASK: Find Average Salary For Gender;

SELECT round(AVG(nvl(a.salary,0)),2) as avg, b.gender  
FROM employee_salary  a
INNER JOIN employee_ b
ON a.emp_id = b.emp_id
GROUP BY b.gender;


TASK: Find max salary for gender and their name;

SELECT 
        max(t2.full_name) keep ( dense_rank first order by t1.salary desc ) as fullname,
         t2.gender,
        max(t1.salary) as max
FROM    employee_salary t1
INNER JOIN employee_ t2 ON t2.emp_id = t1.emp_id
GROUP BY t2.gender;