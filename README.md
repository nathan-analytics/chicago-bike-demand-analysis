# Chicago Bike Demand Analysis

End-to-end analytics project combining bike trip data, weather API data, and event data to identify demand drivers and improve operational planning.

---

## Project Summary

Analyzed 1.1M+ bike trips by integrating trip, weather, and event data to understand what drives demand.

Built a full pipeline (Python → PostgreSQL → Power BI) and found:

- Rain reduces demand by ~32%
- Warm weather drives up to 4x higher usage
- Events only impact demand when combined with favorable conditions

Result: clear, data-driven recommendations for demand forecasting and operational optimization.

---

## Why This Matters

Bike-sharing systems depend on accurate demand planning.

This analysis shows how external data (weather + events) can be used to:
- Predict demand spikes and drops
- Optimize bike distribution and staffing
- Reduce operational inefficiencies

---

## Dashboard Preview

**Executive Overview**

<img width="1317" height="740" alt="executive_overview" src="https://github.com/user-attachments/assets/2b6b0d8e-72c5-4f83-b971-50f2493f86bc" />

**Weather Impact**

<img width="1322" height="748" alt="weather_impact" src="https://github.com/user-attachments/assets/7c96d585-34ba-433c-bfda-f7f36ec063bb" />

**Event Impact**

<img width="1280" height="721" alt="event_impact" src="https://github.com/user-attachments/assets/3f74f8da-7d6a-4afa-9ae7-8354cb5ebee6" />

---

## Case Study

[chicago-bike-demand.pdf](https://github.com/user-attachments/files/26550960/chicago-bike-demand.pdf)

---

## Key Insights

- Rain reduces demand by ~32%, making it the strongest negative driver
- Warm weather drives up to 4x higher demand
- Peak demand occurs around 5 PM (commuter behavior)
- Events amplify demand only under favorable weather conditions
- Demand is driven by interaction between multiple variables, not a single factor

---

## Data Pipeline

Raw Data (Divvy Trips + Weather API + Events)  
→ Python (Cleaning, Feature Engineering, API Integration)  
→ PostgreSQL (Data Modeling & Storage)  
→ SQL (Views, Aggregations, KPI Structuring)  
→ Power BI (Dashboard & Insights)

---

## Methodology

- Cleaned and transformed 1.1M+ records using Python (Pandas)
- Engineered time-based and weather-based features
- Aggregated trip-level data into hourly demand metrics
- Integrated external API data (weather) and event data
- Modeled final dataset in PostgreSQL (`fact_demand_weather_events`)
- Built SQL views for demand segmentation and KPI analysis
- Developed Power BI dashboard for business insights

---

## SQL Work

- Created analytical views for hourly demand and segmentation
- Structured datasets for Power BI reporting

---

## Business Impact

- Improve bike availability during peak demand conditions
- Use weather forecasts to proactively adjust operations
- Reduce inefficiencies during low-demand periods
- Optimize event-based planning when conditions are favorable

---

## Tech Stack

- Python (Pandas, API integration)
- PostgreSQL (SQL, data modeling)
- Power BI (dashboard & visualization)

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

## Key Takeaway

Bike demand is driven primarily by weather, with events acting as a secondary amplifier.

Combining external and internal data provides a significantly more accurate view of demand and enables better operational decision-making.
