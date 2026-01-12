-- View all data
SELECT *
FROM delivery_routes;

-- Average delivery time by route
SELECT 
    route_id,
    AVG(delivery_time_minutes) AS avg_delivery_time
FROM delivery_routes
GROUP BY route_id
ORDER BY avg_delivery_time DESC;

-- Count of delayed vs non-delayed deliveries
SELECT 
    delayed,
    COUNT(*) AS total_deliveries
FROM delivery_routes
GROUP BY delayed;

-- Average delivery time for delayed vs on-time deliveries
SELECT 
    delayed,
    AVG(delivery_time_minutes) AS avg_delivery_time
FROM delivery_routes
GROUP BY delayed;

-- Identify routes with frequent delays
SELECT 
    route_id,
    COUNT(*) AS delay_count
FROM delivery_routes
WHERE delayed = 'Yes'
GROUP BY route_id
ORDER BY delay_count DESC;
