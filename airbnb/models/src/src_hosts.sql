WITH raw_hosts AS (
    SELECT * FROM {{ source('airbnb', 'hosts') }}
)

SELECT 
    created_at,
    id,
    is_superhost,
    name,
    updated_at
FROM 
    raw_hosts