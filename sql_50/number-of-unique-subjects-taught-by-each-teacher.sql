select teacher_id, count(distinct subject_id) as cnt
from Teacher 
Group by teacher_id
Order by teacher_id

