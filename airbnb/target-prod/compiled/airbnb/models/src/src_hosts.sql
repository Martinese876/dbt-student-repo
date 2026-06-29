WITH raw_hosts AS (
    SELECT * FROM AIRBNB.raw.raw_hosts
)

SELECT 
    created_at,
    id,
    is_superhost,
    name,
    updated_at
FROM 
    raw_hosts