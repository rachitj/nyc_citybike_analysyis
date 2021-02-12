USE [data_science]
GO

/****** Object:  Table [dbo].[citibike_tripdata]    Script Date: 2021-02-11 10:16:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[citibike_tripdata_daily_fact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	year_name INT NOT NULL ,
	month_name INT NOT NULL ,
	trip_start_date date not null,
	[gender] int NOT NULL,
	[age] [int] NULL,
	is_weekend bit Not Null,
	[usertype] [nvarchar](50) NULL,
	[start_station_id] [int] NOT NULL,
	[start_station_name] [nvarchar](50) NOT NULL,
	[end_station_id] [int] NOT NULL,
	[end_station_name] [nvarchar](50) NOT NULL,
	cnt_trips Int Not Null,
	cnt_bike  Int Not Null,
	avg_trip_dur_min numeric(10,2) not null,
	avg_dist_km numeric(10,2) not null,
	speed_mps numeric(10,2) not null,
	total_dist_km numeric(10,2) not null,
	total_tripduration_min numeric(10,2) not null,

PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


