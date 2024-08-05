Select 
    Round (
       Count(*)/(Select count(distinct player_id) fROM Activity)
        ,2) as fraction
From Activity 
Where  (player_id,Date_sub(event_date,interval 1 day)) in (Select player_id, Min(event_date) From Activity Group by player_id) 