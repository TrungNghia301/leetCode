Select name 
From Employee
Where id in (
    Select managerId
    from Employee 
    Group by managerId
    Having (Count(Distinct id)>=5)
    )