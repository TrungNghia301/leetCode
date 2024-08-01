select MAX(num) as num
from (
    select num
    from MyNumbers
    group by num
    Having Count(num) = 1 
) format_table