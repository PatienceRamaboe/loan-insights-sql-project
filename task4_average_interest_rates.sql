SELECT
    l.loan_type,
    UPPER(TRIM(cl.country)) AS country,
    AVG(l.interest_rate) AS avg_rate
FROM loan AS l
JOIN client AS cl
    ON l.client_id = cl.client_id
GROUP BY
    l.loan_type,
    UPPER(TRIM(cl.country));
