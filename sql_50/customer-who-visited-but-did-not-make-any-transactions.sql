SELECT 
    Visits.customer_id, 
    COUNT(Visits.visit_id) AS count_no_trans
FROM 
    Visits
LEFT JOIN 
    Transactions ON Visits.visit_id = Transactions.visit_id
WHERE 
    Transactions.transaction_id IS NULL --When visit id is 5 create three transaction
GROUP BY 
    Visits.customer_id;