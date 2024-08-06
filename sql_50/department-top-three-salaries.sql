Select d.name as Department, rt.name as Employee, rt.salary as Salary
From(
WITH RankedValues AS (
    SELECT *,
           DENSE_RANK() OVER (PARTITION BY departmentId  ORDER BY salary DESC) AS RankNum
    FROM Employee
)
SELECT *
FROM RankedValues
WHERE RankNum <= 3
) as rt 
Left join Department d on d.id =  rt.departmentId 