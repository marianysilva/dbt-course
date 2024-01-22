WITH src_hosts AS (
    SELECT * FROM {{ ref("src_hosts") }}
)

SELECT
    host_id,

    IFF(is_superhost = 't', TRUE, FALSE) AS is_superhost,
    IFNULL(host_name, 'Anonymous') AS host_name,

    created_at,
    updated_at
FROM
    src_hosts