SELECT distinct 
	year(starttime) as year
	,month(starttime) as month
	, gender
	,is_weekend
	,age
	,count(distinct trip_start_date) as trip_days
	,count(trip_id) as cnt_trips
	,count(trip_id)/count(distinct trip_start_date) as rides_per_day
	,count(distinct bikeid) as cnt_bike
	,count(distinct bikeid)/count(distinct trip_start_date) as bikes_per_day
	,AVG(tripduration)/60.0 as avg_trip_dur_min
	,AVG(dist_km) as avg_dist_km
	,sum(dist_km)*1000/sum(tripduration) as speed_mps
	,sum(dist_km) as total_dist_km
  FROM [data_science].[dbo].citibike_tripdata

  Group By
		year(starttime) 
		,month(starttime)
		, gender
		,is_weekend
		,age

  Order by 
	year(starttime) 
   ,month(starttime)
   ,gender
   ,is_weekend
   ,age
   