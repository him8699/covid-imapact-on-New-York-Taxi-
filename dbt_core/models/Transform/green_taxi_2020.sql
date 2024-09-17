WITH filtered_data AS (
    SELECT
        month_year,
        trip_count
    FROM {{ ref('green_taxi_monthly_count') }}  
    WHERE SUBSTRING(month_year, 4, 4) = '2020'
)
SELECT
    month_year,
    trip_count
FROM filtered_data