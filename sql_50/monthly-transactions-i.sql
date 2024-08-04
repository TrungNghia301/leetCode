Select Date_format(trans_date,'%Y-%m') as month, country, Count(*) as trans_count, 
Sum(Case when state = 'approved'then 1 else 0 END) as approved_count, 
Sum(amount) as trans_total_amount,
Sum(If(state = 'approved',amount,0)) as approved_total_amount
From Transactions
Group by month ,country;