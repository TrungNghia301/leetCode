Select Product.product_name,Sales.year, Sales.price
From Sales
Inner Join Product ON Product.product_id = Sales.product_id