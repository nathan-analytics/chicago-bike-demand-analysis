## Final Dataset

The final dataset represents **hourly bike demand enriched with weather and event data**, and serves as the foundation for all analysis and dashboarding in this project.

- Grain: one row per date-hour  
- Source: processed Divvy trip data + weather API + event data  
- Final table: `bike_demand.chicago_bike_demand`  

### Key Columns

- `trip_count`  
- `temperature`  
- `precipitation_mm`  
- `is_raining`  
- `temp_bucket`  
- `is_event_day`  
- `rush_hour`  

### Data Integrity

The dataset was rebuilt after identifying duplicate date-hour records in the original version.  
The final version ensures a **clean, consistent hourly grain**, which is critical for accurate aggregation and analysis.

### Usage

The final dataset was loaded into PostgreSQL and used as the source for the Power BI dashboard.

---

## Reproducing the Data

To recreate this dataset:

1. Download the raw Divvy trip data from the official Divvy data source  
2. Run the notebooks in the `/02_notebooks` folder in order  
3. Each notebook generates intermediate datasets throughout the pipeline  
4. The final dataset can then be:
   - loaded into PostgreSQL  
   - or used directly in Power BI  

---

## Note

This project focuses on building a complete, reproducible analytics pipeline rather than distributing large raw datasets.

All data cleaning, transformation, feature engineering, and integration steps are fully reproducible using the provided notebooks.
