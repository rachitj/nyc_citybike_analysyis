with cte_route
as(
SELECT distinct 
	year(starttime) as year_name
	,month(starttime) as month_names
	,gender
	,end_station_name
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
	,end_station_name
	,gender
 )
 , cte_ranked_data as
 (
 Select *
 ,ROW_NUMBER() OVER( partition by year_name,month_name,gender order by cnt_trips desc )  as rnk_dest
 from cte_route 
 )

 Select * from cte_ranked_data where rnk_dest <11
 order by year_name,month_name,gender,rnk_dest