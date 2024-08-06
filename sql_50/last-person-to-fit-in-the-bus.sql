Select Q.person_name
from
(
    Select person_name, SUM(weight) OVER (ORDER BY turn) AS total_weight ,turn
    From Queue
)  
As Q
Where Q.total_weight <= 1000
Order by Q.turn Desc
Limit 1     