Select employee_id, department_id
from Employee
Where primary_flag = "Y" OR (
    Select Count(distinct department_id)
    from Employee AS e2
    where e2.employee_id = Employee.employee_id
) = 1
group by employee_id