# Chicago Bike Demand Intelligence

End-to-end analytics project focused on understanding how external factors influence bike-sharing demand and how those insights can support real business decisions.

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
<img width="1315" height="740" alt="Weather Bike Demand" src="https://github.com/user-attachments/assets/49ca2a60-fce7-44ce-b551-658c044a05a5" />

### Event Impact
<img width="1275" height="714" alt="Events Bike Demand" src="https://github.com/user-attachments/assets/aee244d3-4633-4ac4-8a1a-4ae007b474d8" />

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
chicago-bike-demand-intelligence/
│
├── 01_data_raw/ # Original datasets (Divvy, weather, events)
├── 02_notebooks/ # Data cleaning and transformation (Python)
├── 03_sql/ # Table creation and SQL scripts
├── 04_data_final/ # Cleaned and aggregated datasets
├── 05_powerbi/ # Power BI dashboard file (.pbix)
├── 06_screenshots/ # Dashboard screenshots for README
└── README.md
```

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
