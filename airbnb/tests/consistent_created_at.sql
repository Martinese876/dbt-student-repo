SELECT b.*
FROM {{ ref('fct_reviews') }} AS b

INNER JOIN {{ ref('dim_listings_cleansed') }} AS d
ON d.listing_id = b.listing_id

WHERE d.created_at > b.review_date