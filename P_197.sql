select w1.Id
from Weather as w1, Weather as w2
where datediff(w1.RecordDate, w2.RecordDate) = 1 and w1.Temperature >
w2.Temperature;

-- or

select A.Id from Weather as A, Weather as B 
where A.Temperature > B.Temperature and TO_DAYS(A.recordDate) = TO_DAYS(B.recordDate) + 1


