Select (
        Select pr.product_name
        From Products pr
        Where pr.product_id = Orders.product_id) as product_name
,Sum(unit) as unit
From Orders
Where order_date between '2020-02-01' and '2020-02-29'
Group by product_id
Having Sum(unit) >= 100