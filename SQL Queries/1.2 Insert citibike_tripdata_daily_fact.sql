
USE [data_science]
GO

Insert into [dbo].[citibike_tripdata_daily_fact]
SELECT distinct 
	year(starttime) as year_name
	,month(starttime) as month_name
	,trip_start_date
	,gender
	,age
	,is_weekend
	,usertype
	,start_station_id
	,start_station_name
	,end_station_id
	,end_station_name
	,count(trip_id) as cnt_trips
	,count(distinct bikeid) as cnt_bike
	,AVG(tripduration)/60.0 as avg_trip_dur_min
	,AVG(dist_km) as avg_dist_km
	,sum(dist_km)*1000/sum(tripduration) as speed_mps
	,sum(dist_km) as total_dist_km
	,sum(tripduration)/60.0 as total_tripduration_min
  FROM [data_science].[dbo].citibike_tripdata
  Group By
	year(starttime) 
	,month(starttime) 
	,trip_start_date
	,gender
	,age
	,is_weekend
	,usertype
	,start_station_id
	,start_station_name
	,end_station_id
	,end_station_name

  Order by 
	year(starttime) 
   ,month(starttime)
	,trip_start_date
	,gender
	,age
	,is_weekend
	,start_station_id
	,start_station_name
	,end_station_id
	,end_station_name
 GO