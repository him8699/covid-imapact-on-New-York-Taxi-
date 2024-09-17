WITH monthly_data AS (
    SELECT
        month_year
    FROM {{ ref('stg_green_taxi_trips') }}
)

SELECT
    month_year,
    COUNT(*) AS trip_count
FROM monthly_data
GROUP BY month_year
ORDER BY month_year