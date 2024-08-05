(SELECT m.title AS results
 FROM MovieRating mvr
 LEFT JOIN Movies m ON m.movie_id = mvr.movie_id
 WHERE YEAR(mvr.created_at) = 2020 AND MONTH(mvr.created_at) = 2
 GROUP BY m.title
 ORDER BY AVG(mvr.rating) DESC, m.title
 LIMIT 1)

UNION ALL

(SELECT u.name AS results
 FROM Users u
 LEFT JOIN MovieRating mvr ON u.user_id = mvr.user_id
 GROUP BY u.name
 ORDER BY COUNT(mvr.user_id) DESC, u.name
 LIMIT 1)
