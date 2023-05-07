select distinct 
P.product_name,S.year,S.price
from
(select distinct product_id,year,price from sales) S
inner join 
 Product as P
 using (product_id);