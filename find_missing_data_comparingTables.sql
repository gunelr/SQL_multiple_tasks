TASK:
If we want to compare tables and 
find out which data are missing in which table,then:


(select e.*,'emp2' as var from emp2 e
minus
select e.*,'emp2' from  emp3 e)
union
(select e.*, 'emp3' from emp3 e
minus
select e.*,'emp3' from emp2 e);