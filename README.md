# nyc_citybike_analysyis
![](https://github.com/rachitj/nyc_citybike_analysyis/blob/main/nyc_city_bike.jpg)
# Description
Alta Bicycle Share, the company that owns and operates the Citi Bike program, is facing some unexpected financial difficulties as a result of dropping sponsorship revenue for the bike share program. Faced with a revenue shortfall, Alta would like you to mine the Citi Bike stations and trips data to come up with solutions and projected revenue impact, or alternatively investigate ways to reduce expenses such as the number of operating stations, without impacting ride volume too negatively.

# Objective
The objective of this project is to do a deep dive analysis on citybike data to come up with solutions and projected revenue impact, or alternatively investigate ways to reduce expenses.

# Deliverables
1. A set of SQL queries you undertake to understand the underlying data
  Please follow the path fro SQL queries:https://github.com/rachitj/nyc_citybike_analysyis/tree/master/SQL%20Queries
2. A Python script which includes deeper analyses of the data
  : https://github.com/rachitj/nyc_citybike_analysyis/blob/master/analysis_v1.ipynb
3. A few charts and summary text to capture the ‘story’ of your analyses/recommendations You can choose to combine these outputs in a single file such as a Jupyter notebook, or present them as separate files.
  : https://github.com/rachitj/nyc_citybike_analysyis/blob/master/nyc_bike_analysis.xlsx

# Steps
1. Import the csv data from https://www.citibikenyc.com/system-data in SQL Server in one central table.
    Data fields :
    Trip Duration (seconds)
    Start Time and Date
    Stop Time and Date
    Start Station Name
    End Station Name
    Station ID
    Station Lat/Long
    Bike ID
    User Type (Customer = 24-hour pass or 3-day pass user; Subscriber = Annual Member)
    Gender (Zero=unknown; 1=male; 2=female)
    Year of Birth
    
2. As the data is pulled for 2016-17, the resords are in millions ( 29 million approx). This can make the system very slow. Hence it is advisable to make a daily fact with proper constrains and indexs. This will make the analysis considerably faster.


# References
image : https://www.bing.com/images/search?view=detailV2&ccid=p9L4XDbH&id=C00F77E23BDCA6C6B369526FA8D6719A812FA893&thid=OIP.p9L4XDbH0hZvkGn6Ev94VwHaFi&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fRa7d2f85c36c7d2166f9069fa12ff7857%3frik%3dk6gvgZpx1qhvUg%26riu%3dhttp%253a%252f%252fwww.nycbikemaps.com%252fwp-content%252fuploads%252f2013%252f05%252fciti-bike-at-barrow-and-hudson.jpg%26ehk%3dnhbVs7oj%252f9omBgG8SUaj3DBR%252fJ1cTstdRcHEvzUOAgU%253d%26risl%3d%26pid%3dImgRaw&exph=765&expw=1022&q=nyc+citi+bikes&simid=608019725899073432&ck=82EB81439AEE975783875F5F3E9F2E2A&selectedIndex=5&FORM=IRPRST&ajaxhist=0
