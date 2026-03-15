SELECT
    MD5(CONCAT(le.ts::TEXT, le.userId::TEXT, le.sessionId::TEXT)) AS play_id,
    le.ts,
    le.userId       AS user_id,
    MD5(CONCAT(le.song, le.artist))         AS song_id,
    MD5(CONCAT(le.city, le.state, le.zip))  AS location_id,
    le.sessionId    AS session_id,
    le.itemInSession AS item_in_session,
    le.auth,
    le.level,
    le.duration
FROM raw.listen_events le
WHERE le.userId IS NOT NULL
  AND le.song IS NOT NULL