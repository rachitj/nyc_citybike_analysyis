# nyc_citybike_analysyis
![](https://github.com/rachitj/nyc_citybike_analysyis/blob/main/nyc_city_bike.jpg)
# Description
Altas Bicycle Share, the company that owns and operates the Citi Bike program, is facing some unexpected financial difficulties as a result of dropping sponsorship revenue for the bike share program. Faced with a revenue shortfall, Altas would like you to mine the Citi Bike stations and trips data to come up with solutions and projected revenue impact, or alternatively investigate ways to reduce expenses such as the number of operating stations, without impacting ride volume too negatively.

# Objective
The objective of this project is to do a deep dive analysis on citybike data to come up with solutions and projected revenue impact, or alternatively investigate ways to reduce expenses.

# Deliverables
1. A set of SQL queries you undertake to understand the underlying data
  Please follow the path fro SQL queries: ![Link](https://github.com/rachitj/nyc_citybike_analysyis/tree/master/SQL%20Queries)
2. A Python script which includes deeper analyses of the data
  : https://github.com/rachitj/nyc_citybike_analysyis/blob/master/analysis_v1.ipynb
3. A few charts and summary text to capture the ‘story’ of your analyses/recommendations You can choose to combine these outputs in a single file such as a Jupyter notebook, or present them as separate files.
  : https://github.com/rachitj/nyc_citybike_analysyis/blob/master/nyc_bike_analysis.xlsx

# Scope
The scope is limited only to bike-tripds data on daily-basis. Addidtional info such as historical data fro 201-17 fro revenue model, total available bikes at a location etc. can enrich the analysis, but is not covered here.

# Steps
1. Import the csv data from https://www.citibikenyc.com/system-data in SQL Server in one central table.Data fields :
    1. Trip Duration (seconds)
    2. Start Time and Date
    3.  Stop Time and Date
    4.  Start Station Name
    5.  End Station Name
    6.  Station ID
    7.  Station Lat/Long
    8.  Bike ID
    9.  User Type (Customer = 24-hour pass or 3-day pass user; Subscriber = Annual Member)
    10. Gender (Zero=unknown; 1=male; 2=female)
    11. Year of Birth

    
2. As the data is pulled for 2016-17, the resords are in millions ( 29 million approx). This can make the system very slow. Hence it is advisable to make a daily fact with proper constrains and indexes. This will make the analysis considerably faster. Records count : 27756696
    1. Link for SQL code : https://github.com/rachitj/nyc_citybike_analysyis/blob/master/SQL%20Queries/1.%20daily_fact.sql
    2. Measures:
       1. avg_trip_duration_min : Average of trips duration in minutes, on a daily basis
       2. avg_distance_km : Average of trips distance counted in KM based on lattitude and longitudes of starting and end stations
       3. speed_mps : Average speed of trips in a day in metres per second. This measuere can help us understand the trip speed by age, weekends,gender, traffic congestions etc.
       4. total_dist_km : sum of all trips in a day (in Km)
       5. total_trip_duration_min : Sum of all trips duration in a day (in minutes)
        
  



# References
image : https://www.bing.com/images/search?view=detailV2&ccid=p9L4XDbH&id=C00F77E23BDCA6C6B369526FA8D6719A812FA893&thid=OIP.p9L4XDbH0hZvkGn6Ev94VwHaFi&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fRa7d2f85c36c7d2166f9069fa12ff7857%3frik%3dk6gvgZpx1qhvUg%26riu%3dhttp%253a%252f%252fwww.nycbikemaps.com%252fwp-content%252fuploads%252f2013%252f05%252fciti-bike-at-barrow-and-hudson.jpg%26ehk%3dnhbVs7oj%252f9omBgG8SUaj3DBR%252fJ1cTstdRcHEvzUOAgU%253d%26risl%3d%26pid%3dImgRaw&exph=765&expw=1022&q=nyc+citi+bikes&simid=608019725899073432&ck=82EB81439AEE975783875F5F3E9F2E2A&selectedIndex=5&FORM=IRPRST&ajaxhist=0
