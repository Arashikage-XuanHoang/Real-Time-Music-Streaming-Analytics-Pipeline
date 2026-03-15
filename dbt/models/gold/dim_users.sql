SELECT DISTINCT
    userId          AS user_id,
    firstName       AS first_name,
    lastName        AS last_name,
    gender,
    level,
    registration
FROM raw.listen_events
WHERE userId IS NOT NULL

UNION

SELECT DISTINCT
    userId,
    firstName,
    lastName,
    gender,
    level,
    registration
FROM raw.page_view_events
WHERE userId IS NOT NULL