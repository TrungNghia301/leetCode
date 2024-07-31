select project_id, Round(AVG(Employee.experience_years),2) as average_years
from Project
Left join Employee on Project.employee_id = Employee.employee_id
Group by project_id