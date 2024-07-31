Select contest_id , Round(Count(user_id)/(Select Count(*)From Users)*100,2) as percentage
From Register
Group by contest_id 
Order by 
percentage desc, contest_id asc 