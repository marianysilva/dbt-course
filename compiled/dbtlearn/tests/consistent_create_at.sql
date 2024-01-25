SELECT
    *
FROM
    AIRBNB.DEV.dim_listings_cleansed listings
    INNER JOIN AIRBNB.DEV.fct_reviews reviews USING (listing_id)
WHERE
    listings.created_at >= reviews.review_date