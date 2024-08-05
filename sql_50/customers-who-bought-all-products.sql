SELECT ctm.customer_id  
FROM Customer ctm  
GROUP BY ctm.customer_id  
HAVING COUNT(DISTINCT ctm.product_key) = (SELECT COUNT(*) FROM Product);  