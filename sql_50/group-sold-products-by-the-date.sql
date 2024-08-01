SELECT sell_date, COUNT(distinct product) AS num_sold,
Group_Concat(distinct product) as products
FROM Activities
GROUP BY sell_date
