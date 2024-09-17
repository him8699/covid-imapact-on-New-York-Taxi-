
WITH source_data AS (
    SELECT
        month_year   -- Extracting Month-Year
    FROM {{ source('staging', 'combined_green_taxi_trips') }}
)

SELECT
*
FROM source_data