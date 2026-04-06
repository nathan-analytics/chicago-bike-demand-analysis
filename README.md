# Chicago Bike Demand

End-to-end analytics project focused on understanding how external factors influence bike-sharing demand and how those insights can support real business decisions.

This project simulates a real-world analytics workflow from raw data ingestion to business-facing dashboard delivery.

---

## Project Summary

Analyzed over 1.1 million bike trips to determine how weather and events impact demand.

**Key insights:**

- Rain reduces demand by approximately 32%  
- Warm temperatures significantly increase usage  
- Events do not increase demand overall but amplify demand under specific conditions  

The analysis shows that environmental factors are the primary drivers of demand, while events act as secondary modifiers.

---

## Dashboard Preview

### Executive Overview
<img width="1317" height="740" alt="Executive Overview" src="https://github.com/user-attachments/assets/4f9c3b73-05c1-4a6d-ac3a-c5442286d476" />

### Weather Impact
<img width="1322" height="748" alt="weather_impact" src="https://github.com/user-attachments/assets/6d261901-0383-49cc-8393-d34bfaf20fe4" />

### Event Impact
<img width="1280" height="721" alt="event_impact" src="https://github.com/user-attachments/assets/0aaba2eb-8306-43d6-86c6-6ea199d67fda" />

---

## Business Problem

Bike-sharing demand fluctuates significantly based on external conditions. Without a clear understanding of these drivers, companies face challenges in:

- Allocating bikes efficiently  
- Planning staffing and operations  
- Responding to demand fluctuations  

This project identifies the key factors influencing demand and translates them into actionable insights.

---

## Data Sources

- Divvy bike trip data (~1.1M records)  
- Hourly weather data (temperature, precipitation, wind)  
- Event dataset (city events)  

---

## Methodology

1. Data Cleaning & Preparation  
- Cleaned and validated raw Divvy trip data using Python (Pandas)  
- Removed invalid records, handled missing values, and standardized data types  

2. Feature Engineering  
- Engineered time-based features including hour, day of week, and weekend indicators  
- Calculated trip duration and created demand-driving flags such as rush hour  
- Derived weather-based features including temperature buckets and rain indicators  

3. Demand Aggregation  
- Transformed trip-level data into an hourly demand dataset  
- Calculated key metrics including total trips, member vs casual usage, and average trip duration  

4. Data Enrichment  
- Integrated external weather data (temperature, precipitation, wind speed)  
- Merged curated event data to evaluate real-world demand drivers  

5. Data Modeling & SQL  
- Structured a final fact table in PostgreSQL (`fact_demand_weather_events`)  
- Used SQL to validate aggregations, ensure data integrity, and support analysis  

6. Visualization & Business Insights  
- Built an interactive Power BI dashboard to analyze demand patterns  
- Designed visuals to clearly communicate how weather, time, and events impact bike usage  

---

## Key Insights

- Weather has a significant impact on bike demand  
  - Rain reduces average hourly demand by ~32%, making it one of the strongest negative drivers  

- Temperature strongly influences ridership levels  
  - Warm conditions generate nearly 4x higher demand than cold weather  
  - Mild conditions show moderate demand, reinforcing clear seasonal behavior  

- Demand patterns align with commuter behavior  
  - Peak demand occurs during late afternoon hours (~5 PM), indicating heavy usage during commuting periods  

- Events alone are not a primary demand driver  
  - Overall demand is slightly lower on event days compared to non-event days  
  - However, events amplify demand when combined with favorable conditions (warm weather, no rain)  

- Member riders consistently drive the majority of usage  
  - Member trips make up the largest share of demand across all conditions  
  - Casual ridership increases with better weather but remains secondary  

- Demand is driven by the interaction of multiple factors  
  - Weather, time of day, and events together create the strongest impact on ridership patterns  
  - No single variable independently explains demand fluctuations  

## Business Recommendations

- Align bike availability with peak demand patterns  
  - Increase bike supply during warm weather and peak commuting hours (~5 PM), where demand consistently spikes  

- Use weather as a primary planning signal  
  - Adjust staffing, maintenance, and bike distribution based on forecasts  
  - Prepare for significant demand drops during rain (~32% decrease) and reallocate resources accordingly  

- Focus on high-impact event conditions  
  - Prioritize events that occur during favorable weather, where demand amplification is strongest  
  - Avoid overinvesting in events that do not independently drive demand  

- Optimize operations around commuter behavior  
  - Ensure high bike availability and station readiness during peak commute times  
  - Target high-traffic stations to maximize utilization  

- Improve efficiency during low-demand periods  
  - Scale operations during cold or rainy conditions  
  - Use downtime for maintenance, redistribution, and system optimization  

## Business Impact

These strategies enable more efficient resource allocation, improved bike availability during peak demand, and reduced operational waste during low-demand periods—ultimately supporting higher utilization and better system performance.
---

## Tech Stack

- **Python** (Pandas, data cleaning, feature engineering)  
- **PostgreSQL** (data storage and modeling)  
- **Power BI** (data visualization and dashboarding)  

---

## Project Structure
```
chicago-bike-demand/
│
├── 01_data_raw/
│   └── README.md
├── 02_notebooks/
│   ├── 01_weather_demand_analysis.ipynb
│   ├── 02_clean_divvy_data.ipynb
│   ├── 03_build_city_hourly_demand.ipynb
│   ├── 04_get_weather_data.ipynb
│   └── 05_join_city_demand_weather.ipynb
├── 03_sql/
│   ├── schema.sql
│   └── analysis_queries.sql
├── 04_data_final/
│   ├── fact_demand_weather_events.csv
│   └── dim_events.csv
├── 05_powerbi/
│   └── chicago_bike_demand_dashboard.pbix
├── 06_screenshots/
│   ├── executive_overview.png
│   ├── weather_impact.png
│   └── event_impact.png
└── README.md
```

---

## How to Reproduce

1. Download raw bike trip data from the Divvy data source  
2. Place files in the `01_data_raw/` folder  
3. Run notebooks in `02_notebooks/` in order  
4. Load the final dataset into PostgreSQL using `03_sql/`  
5. Open the dashboard in `05_powerbi/chicago_bike_demand_dashboard.pbix`

---

## What This Project Demonstrates

- End-to-end analytics workflow  
- Data cleaning and transformation at scale  
- Feature engineering and aggregation  
- Integration of multiple data sources  
- Ability to translate data into actionable business insights  

---

## Key Takeaway

Demand is primarily driven by environmental conditions, with weather acting as the dominant factor and events influencing demand only under specific conditions.

This insight can be directly applied to improve operational planning, resource allocation, and demand forecasting.
