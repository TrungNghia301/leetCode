Select Signups.user_id, round(avg(if (Confirmations.action="confirmed",1,0)),2) as confirmation_rate
from Signups
Left join Confirmations on Signups.user_id = Confirmations.user_id
Group by Signups.user_id