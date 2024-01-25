select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT
    *
FROM
    AIRBNB.DEV.dim_listings_cleansed listings
    INNER JOIN AIRBNB.DEV.fct_reviews reviews USING (listing_id)
WHERE
    listings.created_at >= reviews.review_date
      
    ) dbt_internal_test