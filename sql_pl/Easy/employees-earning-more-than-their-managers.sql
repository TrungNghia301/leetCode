Select /*e.id ,*/ e.name as Employee /*, e.salary, e.managerId , m.name as name_m , m.salary as salary_m*/
From Employee e
join Employee m on e.managerId = m.id
Where e.salary > m.salary