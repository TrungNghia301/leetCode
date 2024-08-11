Select event_day as day, emp_id, Sum(out_time-in_time) as total_time
From Employees
Group by emp_id, event_day 