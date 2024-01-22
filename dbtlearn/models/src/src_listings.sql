WITH raw_listings AS (
    SELECT
        *
    FROM
        {{ source('airbnb', 'listings') }}
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