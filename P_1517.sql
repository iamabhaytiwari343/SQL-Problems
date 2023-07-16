
select *
from Users
where regexp_like(mail,'^[a-zA-z][a-zA-Z0-9_,-]*@leetcode[.]com')