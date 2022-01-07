--

create or replace function Func_Calc_PersonalSalary(salary float,perSectorType number)
return float Is v_salary float;
begin
if salary>200 then 
        if perSectorType=0 then
            if salary<=8000 then
                v_salary:=salary-(((salary-200)*0.10)+(200*0.03)+(salary*0.005)+(salary*0.01));
                else
                v_salary:=salary-(((salary-8000)*0.14)+((salary-200)*0.10)+(200*0.03)+(salary*0.005)+(8000*0.01)+((salary-8000)*0.005));
            end if;
        elsif perSectorType=1 then
            if salary<=2500 then
                v_salary:=salary-(((salary-200)*0.14)+(salary*0.03)+(salary*0.005)+(salary*0.02));
                else
            
                if salary<=8000 then
                    v_salary:=salary-(((salary-2500)*0.25)+(2500*0.14)+(salary*0.03)+(salary*0.005)+(salary*0.02));
                    else
                    v_salary:=salary-(((salary-2500)*0.25)+(2500*0.14)+(salary*0.03)+(salary*0.005)+(8000*0.02)+((salary-8000)*0.005));
                end if;
            end if;
        end if;
    return round(v_salary,2);
    else
    v_salary:=0;
    return v_salary;
end if;
end;
/
set serveroutput on;
begin
dbms_output.put_line(Func_Calc_PersonalSalary(3065,0));
end;
/