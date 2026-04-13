-- Schema: bike_demand
-- Table: fact_demand_weather_events
-- Description: Final analytical dataset combining demand, weather, and event data

Note: The dataset was rebuilt into a new table after identifying duplicate date-hour records in the original version. The final table ensures one row per date-hour for accurate aggregation and analysis.

CREATE SCHEMA IF NOT EXISTS bike_demand;

CREATE TABLE IF NOT EXISTS bike_demand.chicago_bike_demand (
    date DATE,
    hour INT,
    trip_count INT,
    member_trip_count INT,
    casual_trip_count INT,
    avg_trip_duration_min FLOAT,
    is_weekend BOOLEAN,
    rush_hour BOOLEAN,
    temperature FLOAT,
    precipitation_mm FLOAT,
    wind_speed FLOAT,
    is_raining BOOLEAN,
    temp_bucket TEXT,
    bad_weather BOOLEAN,
    is_event_day BOOLEAN
);