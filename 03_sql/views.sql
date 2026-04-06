CREATE OR REPLACE VIEW bike_demand.v_weather_impact AS
SELECT
    temp_bucket,
    is_raining,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.fact_demand_weather_events
GROUP BY temp_bucket, is_raining;

CREATE OR REPLACE VIEW bike_demand.v_event_impact AS
SELECT
    is_event_day,
    is_raining,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.fact_demand_weather_events
GROUP BY is_event_day, is_raining;