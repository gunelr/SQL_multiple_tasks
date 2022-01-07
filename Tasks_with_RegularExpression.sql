TASK: extract name and city form table;

/*
-+|Elnur Sadigov+Tovuz 9991210
|Afsana Gadirova+Baki 9991
6677|Konul Hajiyeva+Baki 44
|Afsana Gadirova+Baki 9991
|Afsana Gadirova+Baki 9991
|Afsana Gadirova+Baki 9991
-+|Elnur Sadigov+Tovuz 9991210
|Afsana Gadirova+Baki 9991
6677|Konul Hajiyeva+Baki 44
|Afsana Gadirova+Baki 9991
|Afsana Gadirova+Baki 9991
|Afsana Gadirova+Baki 9991
*/

select text_data,
regexp_substr(text_data, '[^0-9|+-]+', 1) as name,
regexp_substr(text_data, '[^0-9|+-]+', 1, 2) as city                            
from customer_data_xml;

TASK: extract 5gb;
select regexp_substr('hello fdghjc sdhcjdk 5gb hello','\d+(gb|tb)') as gb
from dual;

TASK: extract phone_number in '+xxx xxxxx xx xx' format
/*
050*586*03*57
050/456/13/87
050-379-15-85
050*37915/85
elmo+944 50 896-78-45
50 896-78-45
+994055 896-78-45
+99455 896-78-45
elmeddin 50 896-78-45
*/
select cos_num, '+994' || ' ' || substr(regexp_replace(cos_num, '[^[:digit:]]+'),-9,9) as phone_number 
from phone_number; 

select cos_num, '+994 '||(substr(REGEXP_REPLACE(cos_num,'[-| |/|*]',''),-9)) as phone_number 
from phone_number;  


--replace with star
SELECT regexp_replace( '4024007187788590', '(^\d{3})(.*)(\d{4}$)', '\1**********\3' ) as credit_card
FROM dual;

