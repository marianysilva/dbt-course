WITH raw_hosts AS (
    SELECT
        *
    FROM
        {{ source('airbnb', 'hosts') }}
)

SELECT
    id AS host_id,

    is_superhost,
    NAME AS host_name,

    created_at,
    updated_at
FROM
    raw_hosts