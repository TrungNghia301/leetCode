Select u.name, sum(t.amount) as balance
From Users u
Left join Transactions t on u.account = t.account
Group by t.account
Having balance >10000
