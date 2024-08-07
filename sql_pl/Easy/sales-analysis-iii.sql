Select product_id, product_name
From Product
Where product_id not in (
    Select s.product_id 
    From Sales s
    Left Join  Product p on p.product_id = s.product_id
    WHERE sale_date < '2019-01-01' OR sale_date > '2019-03-31' 
    UNION
    Select s.product_id 
    From Sales s
    Right Join  Product p on p.product_id = s.product_id
    WHERE sale_date < '2019-01-01' OR sale_date > '2019-03-31'
) And product_id in  (Select product_id from Sales)