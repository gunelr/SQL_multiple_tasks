set serveroutput on;
declare
 x number;
 y number;
begin
for x in 1..5 loop
         y:=x+0.1;
         dbms_output.put(y||' ');  
     for x in 1..4 loop
         y:=y+0.1;
         dbms_output.put(y||' ');
         
     end loop;
         dbms_output.new_line;
         dbms_output.put_line(' ');
    end loop;
end;
/