-- Print "GUNEL" in Star Pattern
declare
row number;
col number;
begin
-- G letter
        for row in 0..6 loop
            for col in 0..5 loop          
                if col=0
                or (col=4 and(row!=1 and row!=2))
                or ((row=0 or row=6) and (col>0 and col<4))
                or (row=3 and (col=3 or col=5))
                then
                dbms_output.put('*');
                else
                dbms_output.put(' ');
                end if;              
            end loop;          
           dbms_output.put_line(' ');
        end loop;  

-- U letter
        for row in 0..6 loop
            for col in 0..5 loop          
                if ((col=0 or col=4)and row!=6)
                or (row=6 and(col>0 and col<4))
               
                then
                dbms_output.put('*');
                else
                dbms_output.put(' ');
                end if;              
            end loop;          
           dbms_output.put_line(' ');
        end loop;

-- N letter      
        for row in 0..6 loop
            for col in 0..6 loop          
                if ((col=0 or col=5) or
                (row=col and (col>0 and col<5)))
                then
                dbms_output.put('*');
                else
                dbms_output.put(' ');
                end if;              
            end loop;          
           dbms_output.put_line(' ');
        end loop;
       
-- E letter          
        for row in 0..7 loop
            for col in 0..5 loop          
                if col=0
                or ((row=0 or row=3 or row=6)and (col>0))
                then
                dbms_output.put('*');
                else
                dbms_output.put(' ');
                end if;              
            end loop;          
           dbms_output.put_line(' ');
        end loop;  
       
-- L letter
       for row in 0..6 loop
            for col in 0..5 loop          
                if col=0 or row=6
                then
                dbms_output.put('*');
                else
                dbms_output.put(' ');
                end if;              
            end loop;          
           dbms_output.put_line(' ');
        end loop;
end;
/

set serveroutput on ;