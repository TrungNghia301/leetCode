select
    transaction_date,
    sum((amount % 2 = 1)*amount) AS odd_sum,
    sum((amount % 2 = 0)*amount) AS even_sum
from transactions
group by 1 order by 1 asc
