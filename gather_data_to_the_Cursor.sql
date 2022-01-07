TASK: 
Cursor vasitesile data-lari cursor-a yig ve printe cixar.
Amma her 6 setrden bir - isaresini qoy.

Gather the data to the cursor using the cursor and Print.
But put a "-" sign every 6 lines.

SET SERVEROUTPUT ON;

declare
    cursor emp_cur is
    select emp_name,salary from employee order by salary desc;
    
    emp_name    employee.emp_name%type;
    emp_salary  employee.salary%type;
    
    i number:=1;
    
begin

    open emp_cur;

        loop
            fetch emp_cur into emp_name,emp_salary;
            exit when emp_cur%notfound or emp_cur%notfound is null;
            dbms_output.put_line(rpad(emp_cur%rowcount||'.',4)||emp_name||' '||emp_salary );
                    
                if emp_cur%rowcount=6*i then 
                     dbms_output.put_line('----------------------');
                     i:=i+1;
                end if;
                
        end loop;
    
end;
/

