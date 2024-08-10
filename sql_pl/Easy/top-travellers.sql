Select u.name, ifnull(sum(r.distance),0) as travelled_distance
From Users u
Left join Rides r on r.user_id = u.id
Group by r.user_id
order by travelled_distance DESC ,u.name asc 