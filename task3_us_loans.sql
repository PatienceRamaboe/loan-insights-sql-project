SELECT
    l.client_id,
    c.contract_date,
    l.principal_amount,
    l.loan_type
FROM loan AS l
JOIN client AS cl
    ON l.client_id = cl.client_id
JOIN contract AS c
    ON l.contract_id = c.contract_id
WHERE UPPER(TRIM(cl.country)) = 'USA'
  AND c.contract_date >= '2022-01-01';
