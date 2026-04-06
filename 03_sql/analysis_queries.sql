-- Average demand by temperature bucket
SELECT
    temp_bucket,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.fact_demand_weather_events
GROUP BY temp_bucket
ORDER BY avg_trip_count;

-- Average demand during rain vs no rain
SELECT
    is_raining,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.fact_demand_weather_events
GROUP BY is_raining;

-- Average demand on event vs non-event days
SELECT
    is_event_day,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.fact_demand_weather_events
GROUP BY is_event_day;

-- Event impact under rain conditions
SELECT
    is_event_day,
    is_raining,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.fact_demand_weather_events
GROUP BY is_event_day, is_raining
ORDER BY is_event_day, is_raining;

-- Event impact by temperature range
SELECT
    is_event_day,
    temp_bucket,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.fact_demand_weather_events
GROUP BY is_event_day, temp_bucket
ORDER BY temp_bucket, is_event_day;