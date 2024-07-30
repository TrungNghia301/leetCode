Select act1.machine_id
, Round (AVG(act2.timestamp - act1.timestamp),3) as processing_time
From Activity act1
Join Activity act2 ON act1.machine_id = act2.machine_id
and  act1.process_id=act2.process_id
and act1.timestamp<act2.timestamp
group by act1.machine_id