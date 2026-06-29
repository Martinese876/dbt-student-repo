{{
    config(
        materialized='table'
    )
}}

WITH src_hosts AS (
    SELECT * FROM {{ ref('src_hosts')}}
)

SELECT
    id as host_id,
    NVL(name, 'Anonymous') as host_name,
    is_superhost,
    created_at,
    updated_at
FROM src_hosts