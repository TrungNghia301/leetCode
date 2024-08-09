Select f.request_at as Day, 
Round(SUM(CASE WHEN f.status LIKE 'cancelled%' THEN 1 ELSE 0 END) / COUNT(*),2) AS 'Cancellation Rate'
From (
SELECT t.*, u.banned
From (
    Select client_id,status,driver_id, request_at
    From Trips
) as t
Left join Users u on t.client_id = u.users_id
Where u.banned <> 'Yes' and t.request_at < '2013-10-04'
and t.driver_id not in (Select users_id from Users Where role = 'driver' and banned = 'Yes')
) as f 
Group by f.request_at

