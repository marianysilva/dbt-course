

WITH  __dbt__cte__src_hosts as (
WITH raw_hosts AS (
    SELECT
        *
    FROM
        AIRBNB.raw.raw_hosts
)

SELECT
    id AS host_id,

    is_superhost,
    NAME AS host_name,

    created_at,
    updated_at
FROM
    raw_hosts
), src_hosts AS (
    SELECT * FROM __dbt__cte__src_hosts
)

SELECT
    host_id,

    IFF(is_superhost = 't', TRUE, FALSE) AS is_superhost,
    IFNULL(host_name, 'Anonymous') AS host_name,

    created_at,
    updated_at
FROM
    src_hosts