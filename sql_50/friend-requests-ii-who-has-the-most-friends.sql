Select Greatest(r_id,acc_id) as id ,num
From (
(Select ifnull(r.requester_id,0) as r_id,ifnull(a.accepter_id,0) as acc_id , Ifnull(count_ques,0)+Ifnull(count_accept,0) as num
FROM
(Select requester_id, Count(requester_id) as count_ques
From RequestAccepted
Group by requester_id) as r
Left join
(Select accepter_id, Count(accepter_id) as count_accept
From RequestAccepted
Group by accepter_id) as a 
On r.requester_id = a.accepter_id)

Union

(Select ifnull(r.requester_id,0),ifnull(a.accepter_id,0), Ifnull(count_ques,0)+Ifnull(count_accept,0)
FROM
(Select requester_id, Count(requester_id) as count_ques
From RequestAccepted
Group by requester_id) as r
Right Join
(Select accepter_id, Count(accepter_id) as count_accept
From RequestAccepted
Group by accepter_id) as a 
On r.requester_id = a.accepter_id)
) as final_table
Order by num desc 
limit 1