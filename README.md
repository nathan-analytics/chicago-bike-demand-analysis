# Chicago Bike Demand Analysis

End-to-end data analytics project analyzing how weather and external events impact bike-sharing demand to support operational planning and decision-making.

---

## Project Overview

This project analyzes over **1.1 million Divvy bike trips** to understand what drives demand at an hourly level.

The analysis combines:

- Trip data (Divvy)
- Weather data (API)
- Event data (city events)

All data was cleaned, transformed, and integrated into a unified dataset to uncover how weather conditions and events influence ridership patterns.

The result is a complete analytics pipeline and dashboard that provides **actionable insights for demand forecasting and operations**.

---

## Key Insights

- Rain reduces hourly demand by approximately **32%**, making it the strongest negative driver  
- Warmer temperatures significantly increase demand, with usage up to **4x higher** than cold conditions  
- Events do not consistently increase demand on their own  
- Event impact is conditional, with higher demand observed during warm weather  
- Bike demand follows predictable daily patterns, with peaks during commuting hours  

---

## Business Impact

This analysis demonstrates how external data can improve operational planning:

- Anticipate demand drops during poor weather conditions  
- Optimize bike distribution and staffing based on weather forecasts  
- Identify high-demand periods for better resource allocation  
- Understand when events meaningfully impact ridership  

---

## Data Pipeline

This project was built as a full end-to-end workflow:

### 1. Data Cleaning (Python / Pandas)
- Processed ~1.1M raw Divvy trip records  
- Removed invalid trips and handled missing values  
- Standardized datetime fields  
- Created features such as:
  - Hourly demand  
  - Rider type splits (member vs casual)  

### 2. Demand Aggregation
- Aggregated trip data into an hourly demand dataset  
- Created a consistent date-hour grain to support time-based analysis  

### 3. Weather Data Integration (API)
- Pulled historical weather data via API  
- Features included:
  - Temperature  
  - Precipitation  
  - Wind speed  
- Engineered weather indicators:
  - Rain flag  
  - Temperature buckets  

### 4. Event Data Integration
- Collected and structured event data  
- Merged events into the dataset at the date level  
- Created event flags for analysis  

### 5. Data Modeling (PostgreSQL)
- Final dataset stored in:  
  - `fact_demand_weather_events`  
- Ensured one row per date-hour  
- Validated data integrity (removed duplicate hour issues)  

### 6. Visualization (Power BI)
- Built a 3-page dashboard:
  - Executive Overview  
  - Weather Impact  
  - Event Impact  
- Created DAX measures including:
  - Total Trips  
  - Average Trips  
  - Rain Impact %  
  - Event Impact %  
  - Rainy Days %  

---

## Dashboard

### Executive Overview

<img width="1316" height="739" alt="executive_overview" src="https://github.com/user-attachments/assets/e729a3dd-9006-417e-9c2d-6d0daa19cffd" />

- High-level KPIs and demand trends  
- Daily demand patterns and hourly usage distribution  
- Quick comparison of weather and event impact  

---

### Weather Impact

<img width="1315" height="740" alt="weather_impact" src="https://github.com/user-attachments/assets/8add6ddc-3b95-4e93-b030-9e442279db60" />

- Demand comparison between rain and no rain conditions  
- Temperature-based demand analysis  
- Combined impact of temperature and precipitation  

---

### Event Impact

<img width="1155" height="645" alt="event_impact" src="https://github.com/user-attachments/assets/8f6dce56-6948-4927-97dd-7946e4c746e6" />

- Event vs non-event demand comparison  
- Event performance under different weather conditions  
- Analysis of when events actually influence ridership  

---

## Tools & Technologies

- Python (Pandas, NumPy)  
- PostgreSQL  
- Power BI (DAX, Data Modeling)  
- Weather API integration  

---

## Project Structure

```
chicago-bike-demand-analysis/
│
├── 01_data_raw/
│   ├── README.md
│   └── (no large files uploaded)
│
├── 02_notebooks/
│   ├── 01_clean_divvy_data.ipynb
│   ├── 02_build_city_hourly_demand.ipynb
│   ├── 03_get_weather_data.ipynb
│   ├── 04_join_city_demand_weather.ipynb
│   ├── 05_weather_demand_analysis.ipynb
│
├── 03_data_final/
│   ├── README.md
│
├── 04_sql/
│   ├── schema.sql
│   ├── analysis_queries.sql
│
├── 05_powerbi/
│   ├── chicago_bike_demand_dashboard.pbix
│
├── 06_screenshots/
│   ├── executive_overview.png
│   ├── weather_impact.png
│   ├── event_impact.png
│
└── README.md
```

---
## How to Reproduce

### 1. Download the raw data
Download the Divvy trip data from the official Divvy data source and save the files locally.

- Source: Divvy trip data from the Divvy website
- Format: CSV files
- Time period used in this project: March 2025 to May 2025

### 2. Run the Python notebooks in order
The data preparation and analysis workflow was completed in five notebooks.

1. `01_clean_divvy_data.ipynb`  
   - Load raw Divvy trip data
   - Clean invalid or missing values
   - Standardize datetime fields
   - Prepare trip-level data for aggregation

2. `02_build_city_hourly_demand.ipynb`  
   - Aggregate trip data to the hourly level
   - Create hourly demand metrics
   - Build the base city-level demand table

3. `03_get_weather_data.ipynb`  
   - Pull historical weather data from the weather API
   - Clean and structure weather fields
   - Create indicators such as rain flags and temperature buckets

4. `04_join_city_demand_weather.ipynb`  
   - Merge hourly demand data with weather data
   - Add external event data
   - Create the final analytical dataset

5. `05_weather_demand_analysis.ipynb`  
   - Validate the final dataset
   - Perform exploratory analysis
   - Prepare outputs used in the dashboard

### 3. Load the final dataset into PostgreSQL
After the Python workflow was complete, the final dataset was loaded into PostgreSQL for storage and connection to Power BI.

- Final table name: `fact_demand_weather_events`
- Grain: one row per date-hour
- Purpose:
  - store the cleaned final dataset
  - validate row-level structure
  - serve as the source table for Power BI

### 4. Connect PostgreSQL to Power BI
Connect Power BI to the PostgreSQL database and import the final table.

- Source table: `fact_demand_weather_events`
- Build the data model
- Create DAX measures for:
  - Total Trips
  - Average Trips
  - Rain Impact %
  - Event Impact %
  - Rainy Days %

### 5. Rebuild the dashboard
Create the three dashboard pages in Power BI:

- Executive Overview
- Weather Impact
- Event Impact

These pages summarize the main demand patterns and show how weather and events influence hourly bike demand.

### Notes
- Most of the transformation and feature engineering in this project was done in Python
- PostgreSQL was mainly used to store the final cleaned table and connect the dataset to Power BI
- The final dashboard was built in Power BI using DAX measures and visual design choices focused on business communication

---

## What This Project Demonstrates

- Ability to build an end-to-end data pipeline  
- Strong skills in data cleaning and transformation  
- Experience integrating multiple data sources (API + CSV)  
- Ability to design business-focused dashboards  
- Understanding of real-world demand drivers  
- Translating data into clear, actionable insights  

---

## Future Improvements

- Add predictive modeling for demand forecasting  
- Incorporate additional external factors (holidays, traffic, etc.)  
- Build a real-time pipeline for live demand tracking  
- Expand analysis to multiple cities  

---

## Final Thoughts

This project highlights how combining operational data with external factors like weather and events can significantly improve demand planning.

It demonstrates the value of moving beyond basic analysis and building integrated, real-world analytics solutions.
