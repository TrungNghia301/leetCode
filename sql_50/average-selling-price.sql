Select prc.product_id ,
IfNull(round(Sum(prc.price*uni.units)/Sum(uni.units),2),0) as average_price
From Prices prc
Left join UnitsSold uni On uni.product_id = prc.product_id
and uni.purchase_date between prc.start_date and prc.end_date
Group by prc.product_id