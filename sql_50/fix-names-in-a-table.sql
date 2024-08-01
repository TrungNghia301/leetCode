Select user_id , CONCAT(UPPER(LEFT(name,1)),LOWER(SUBSTRING(name From 2))) as name
From Users
Order by user_id