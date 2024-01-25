

WITH  __dbt__cte__src_listings as (
WITH raw_listings AS (
    SELECT
        *
    FROM
        AIRBNB.raw.raw_listings
)

SELECT
    id AS listing_id,
    host_id,

    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    price AS price_str,

    created_at,
    updated_at
FROM
    raw_listings
), src_listings AS (
    SELECT * FROM __dbt__cte__src_listings
)

SELECT
    listing_id,
    host_id,

    listing_name,
    room_type,
    IFF(minimum_nights = 0, 1, minimum_nights) AS minimum_nights,
    REPLACE(price_str, '$')::NUMBER(10, 2) AS price,

    created_at,
    updated_at
FROM
    src_listings