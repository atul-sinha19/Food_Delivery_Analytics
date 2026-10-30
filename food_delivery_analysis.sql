CREATE DATABASE food_delivery_db;

USE food_delivery_db;
SELECT COUNT(*) AS total_records
FROM delivery_orders;
SELECT
    COUNT(*) AS total_orders,
    ROUND(AVG(`Time_taken(min)`), 2) AS avg_delivery_time
FROM delivery_orders;

SELECT
    Road_traffic_density,
    COUNT(*) AS total_orders,
    ROUND(AVG(`Time_taken(min)`), 2) AS avg_delivery_time
FROM delivery_orders
GROUP BY Road_traffic_density
ORDER BY avg_delivery_time DESC;

SELECT
    Weatherconditions,
    COUNT(*) AS total_orders,
    ROUND(AVG(`Time_taken(min)`), 2) AS avg_delivery_time
FROM delivery_orders
GROUP BY Weatherconditions
ORDER BY avg_delivery_time DESC;

SELECT
    Delivery_person_ID,
    COUNT(*) AS total_orders,
    ROUND(AVG(Delivery_person_Ratings), 2) AS avg_rating
FROM delivery_orders
GROUP BY Delivery_person_ID
ORDER BY total_orders DESC
LIMIT 10;
SELECT
    City,
    COUNT(*) AS total_orders,
    ROUND(AVG(`Time_taken(min)`), 2) AS avg_delivery_time
FROM delivery_orders
GROUP BY City
ORDER BY total_orders DESC;