

WITH fct_reviews AS (
    SELECT * FROM AIRBNB.DEV.fct_reviews
),
full_moon_dates AS (
    SELECT * FROM AIRBNB.DEV.seed_full_moon_dates
)

SELECT
    fct_reviews.*,
    IFF(
        full_moon_dates.full_moon_date IS NULL,
        'not full moon',
        'full moon'
    ) AS is_full_moon
FROM
    fct_reviews
    LEFT JOIN full_moon_dates
        ON (
            TO_DATE(fct_reviews.review_date)
            = DATEADD(DAY, 1, full_moon_dates.full_moon_date)
        )