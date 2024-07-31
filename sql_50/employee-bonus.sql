Select Employee.name,Bonus.bonus
From Employee
Left join Bonus on Employee.empId = Bonus.empId
where bonus < 1000 or Bonus is null

