Select name 
From SalesPerson
Where sales_id not in (
Select tb.sales_id
from SalesPerson s
Left join (
            Select o.com_id, o.sales_id, c.name
            From Orders o
            Left join Company c on c.com_id = o.com_id
) as tb on tb.sales_id = s.sales_id
Where tb.name = 'RED')