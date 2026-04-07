# Chicago Bike Demand Analysis

Built an end-to-end analytics pipeline combining bike trips, weather API data, and event data to identify key drivers of demand.

---

## Project Summary

Analyzed 1.1M+ records to uncover how external factors like weather and events impact usage patterns and operational planning.

Built a complete analytics workflow from raw data processing to a business-facing Power BI dashboard.

Key findings show that demand is highly sensitive to weather conditions, with rain reducing demand by ~32% and warm temperatures driving up to 4x higher usage. Events alone do not increase demand but significantly amplify usage when combined with favorable conditions.

This project demonstrates how external data can be leveraged to improve demand forecasting and operational decision-making.

These insights can be used to optimize bike distribution, staffing, and demand forecasting.

---

## Dashboard Preview

**Executive Overview**

<img width="1317" height="740" alt="executive_overview" src="https://github.com/user-attachments/assets/2b6b0d8e-72c5-4f83-b971-50f2493f86bc" />

**Weather Impact**

<img width="1322" height="748" alt="weather_impact" src="https://github.com/user-attachments/assets/7c96d585-34ba-433c-bfda-f7f36ec063bb" />

**Event Impact**

<img width="1280" height="721" alt="event_impact" src="https://github.com/user-attachments/assets/3f74f8da-7d6a-4afa-9ae7-8354cb5ebee6" />

---

## Key Insights

- Rain reduces bike demand by ~32%, making it one of the strongest negative drivers
- Warm weather drives up to 4x higher demand compared to cold conditions
- Peak demand occurs during late afternoon hours (~5 PM), aligning with commuter behavior
- Events do not increase demand independently but amplify demand under favorable weather conditions
- Member riders drive the majority of usage, while casual usage increases with better weather
- Demand is driven by the interaction of multiple factors rather than a single variable

---

## Business Problem

Bike-sharing demand fluctuates based on external conditions. Without understanding these drivers, companies struggle to:

- Allocate bikes efficiently
- Plan staffing and operations
- Respond to demand variability

This project identifies the key drivers of demand and translates them into actionable insights.

---

## Business Impact

- Improve bike availability during peak demand conditions (warm weather, commuting hours)
- Use weather forecasts to proactively adjust operations and staffing
- Reduce inefficiencies during low-demand periods such as rain or cold weather
- Leverage event schedules more effectively when combined with favorable conditions

---

## Data Pipeline Architecture

This project was built as a multi-source analytics pipeline:

Weather API → Python (Data Cleaning & Feature Engineering) → PostgreSQL (Data Modeling & Storage) → Power BI (Dashboard & Insights)

---

## Data Pipeline
Built an end-to-end data pipeline integrating multiple data sources to analyze bike demand drivers.

- Collected Divvy bike trip data (~1.1M+ records)
- Integrated hourly weather data via external API (temperature, precipitation, wind)
- Merged event data to capture real-world demand drivers
- Performed data cleaning and feature engineering using Python (Pandas)
- Built aggregated hourly demand dataset
- Modeled final dataset in PostgreSQL
- Developed Power BI dashboard for analysis and decision-making

---

## Case Study

[chicago-bike-demand.pdf](https://github.com/user-attachments/files/26550960/chicago-bike-demand.pdf)

---

## Data Sources

- Divvy bike trip data (~1.1M records)
- Hourly weather data
- Event dataset

---

## Methodology

### Data Cleaning & Preparation
- Cleaned and validated raw trip data using Python (Pandas)
- Removed invalid records and handled missing values

### Feature Engineering
- Created time-based features (hour, day of week, weekend flags)
- Built demand indicators (rush hour, trip duration)
- Created weather-based features (temperature buckets, rain flags)

### Demand Aggregation
- Transformed trip-level data into an hourly demand dataset
- Calculated total trips, rider type breakdown, and average duration

### Data Enrichment
- Joined weather and event data to analyze external demand drivers

### Data Modeling & SQL
- Built final dataset in PostgreSQL (`fact_demand_weather_events`)
- Validated aggregations and ensured data integrity using SQL

### Visualization
- Developed Power BI dashboard to communicate demand patterns and insights

---

## Business Recommendations

- Increase bike availability during warm weather and peak commuting hours
- Use weather forecasts to guide staffing, maintenance, and bike distribution
- Prioritize events that occur under favorable conditions
- Optimize operations around peak commute times
- Scale down operations during low-demand periods to improve efficiency

---

## Tech Stack

- Python (Pandas – data cleaning & feature engineering)
- PostgreSQL (data modeling & analysis)
- Power BI (dashboard development & visualization)

—

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

—

## What This Project Demonstrates

- Ability to build a full analytics pipeline from raw data to dashboard
- Experience integrating multiple real-world data sources (weather, events, trip data)
- Strong feature engineering and data aggregation at scale
- Proficiency in SQL, Python, and BI tools
- Ability to translate complex analysis into clear business decisions

---

## Key Takeaway

Bike demand is primarily driven by weather conditions, with temperature and precipitation acting as the strongest predictors.

Events influence demand only when combined with favorable conditions.

These insights can be directly used to improve forecasting, operational planning, and resource allocation.
