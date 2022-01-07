-- from today to the end of the year
select sysdate+level-1
from dual connect by level<=365;

--date for a year
select to_date('31-dec-2021','dd-mon-yyyy') + level
from dualconnect by level<=365;

--last day of each month starting from January 31 
select trunc(trunc(to_date('01-02-2022', 'dd-mm-yyyy'), 'month')+rownum*27,'month')-1 
from dual connect by rownum<=13;

--first day of each month
select trunc(trunc(sysdate, 'month')+rownum*27,'month')
from dual connect by rownum<=13;




