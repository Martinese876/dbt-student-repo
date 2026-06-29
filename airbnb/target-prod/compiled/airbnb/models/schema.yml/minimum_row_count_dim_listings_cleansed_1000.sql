

SELECT 
    COUNT(*) as row_count
FROM 
    AIRBNB.PROD.dim_listings_cleansed
HAVING 
    COUNT(*) < 1000
