CREATE SCHEMA IF NOT EXISTS bike_demand;

CREATE TABLE IF NOT EXISTS bike_demand.fact_demand_weather_events (
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