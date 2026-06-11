SELECT
    client_id,
    CAST(date_of_birth AS DATE) AS date_of_birth,
    CASE
        WHEN LOWER(TRIM(employment_status)) = 'emplouyed' THEN 'employed'
        WHEN LOWER(TRIM(employment_status)) IN ('full-time', 'part-time') THEN 'employed'
        ELSE LOWER(TRIM(employment_status))
    END AS employment_status,
    UPPER(TRIM(country)) AS country
FROM client;
