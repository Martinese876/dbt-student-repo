

WITH  __dbt__cte__src_hosts as (
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
), src_hosts AS (
    SELECT * FROM __dbt__cte__src_hosts
)

SELECT
    id as host_id,
    NVL(name, 'N/A') as host_name,
    is_superhost,
    created_at,
    updated_at
FROM src_hosts