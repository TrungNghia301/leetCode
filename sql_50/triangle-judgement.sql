Select *, 
Case
    when x + y > z 
    and x + z > y 
    and y + z > x then "Yes"
    else "No" 
End as triangle
from Triangle 
