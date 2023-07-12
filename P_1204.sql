with cte as
(select person_id,person_name,weight,turn,sum(weight) over(order by turn ) as cum_weight from Queue order by turn)

select person_name from Queue where turn =(select max(turn) from cte where cum_weight<=1000)
