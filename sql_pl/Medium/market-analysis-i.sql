WITH OrdersIn2019 AS (
    SELECT o.buyer_id, u.join_date, COUNT(o.buyer_id) AS orders_in_2019
    FROM Orders o 
    LEFT JOIN Users u ON u.user_id = o.buyer_id
    WHERE o.order_date >= '2019-01-01' AND o.order_date <= '2019-12-31'
    GROUP BY o.buyer_id
)

SELECT o.buyer_id, o.join_date, o.orders_in_2019
FROM OrdersIn2019 o

UNION ALL

SELECT u.user_id, u.join_date, 0 AS orders_in_2019
FROM Users u
WHERE u.user_id NOT IN (SELECT buyer_id FROM OrdersIn2019);
