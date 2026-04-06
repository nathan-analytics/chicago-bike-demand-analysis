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

- Cleaned and validated raw trip data using Python  
- Engineered key features including:
  - Hour, day, and weekend indicators  
  - Trip duration  
  - Demand aggregation metrics  
- Aggregated data to an hourly demand level  
- Integrated weather and event datasets  
- Structured final dataset in PostgreSQL  
- Built an interactive Power BI dashboard  

---

## Key Insights

### Weather as the Primary Driver

- Demand increases significantly in warm conditions  
- Cold temperatures reduce overall usage  
- Rain leads to a ~32% decrease in demand  

---

### Events as Conditional Modifiers

- Overall demand is slightly lower on event days  
- Events increase demand during warm conditions  
- Events help offset demand declines during rain  

---

### Demand Patterns

- Demand peaks during commuting hours  
- Clear and consistent daily usage cycles  

---

## Business Recommendations

- Increase bike availability during warm weather  
- Adjust staffing and operations based on weather forecasts  
- Use events strategically during favorable conditions  
- Prepare for reduced demand during rain  

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
