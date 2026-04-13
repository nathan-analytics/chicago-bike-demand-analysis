-- =========================================================
-- File: analysis_queries.sql
-- Project: Chicago Bike Demand
-- Description: Business-focused SQL queries used to analyze
-- how weather and events impact hourly bike demand
-- =========================================================

-- 1. Average demand by temperature range
SELECT
    temp_bucket,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.chicago_bike_demand
GROUP BY temp_bucket
ORDER BY
    CASE
        WHEN temp_bucket = 'cold' THEN 1
        WHEN temp_bucket = 'mild' THEN 2
        WHEN temp_bucket = 'warm' THEN 3
        ELSE 4
    END;

-- 2. Average demand during rain vs no rain
SELECT
    is_raining,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.chicago_bike_demand
GROUP BY is_raining
ORDER BY is_raining;

-- 3. Average demand on event vs non-event days
SELECT
    is_event_day,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.chicago_bike_demand
GROUP BY is_event_day
ORDER BY is_event_day;

-- 4. Event impact under rain conditions
SELECT
    is_event_day,
    is_raining,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.chicago_bike_demand
GROUP BY is_event_day, is_raining
ORDER BY is_event_day, is_raining;

-- 5. Event impact by temperature range
SELECT
    is_event_day,
    temp_bucket,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.chicago_bike_demand
GROUP BY is_event_day, temp_bucket
ORDER BY
    CASE
        WHEN temp_bucket = 'cold' THEN 1
        WHEN temp_bucket = 'mild' THEN 2
        WHEN temp_bucket = 'warm' THEN 3
        ELSE 4
    END,
    is_event_day;

-- 6. Average demand by hour of day
SELECT
    hour,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.chicago_bike_demand
GROUP BY hour
ORDER BY hour;

-- 7. Average demand during rush hour vs non-rush hour
SELECT
    rush_hour,
    ROUND(AVG(trip_count), 2) AS avg_trip_count
FROM bike_demand.chicago_bike_demand
GROUP BY rush_hour
ORDER BY rush_hour;