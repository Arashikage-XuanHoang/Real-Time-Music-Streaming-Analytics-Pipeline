
  
    

  create  table "sqlpad"."gold_"."fact_sessions__dbt_tmp"
  
  
    as
  
  (
    SELECT
    MD5(CONCAT(ts::TEXT, sessionId::TEXT))  AS session_id,
    ts,
    sessionId,
    NULL::INTEGER                           AS user_id,
    MD5(CONCAT(city, state, zip))           AS location_id,
    level,
    success,
    itemInSession   AS item_in_session
FROM raw.auth_events

UNION ALL

SELECT
    MD5(CONCAT(ts::TEXT, sessionId::TEXT)),
    ts,
    sessionId,
    userId,
    MD5(CONCAT(city, state, zip)),
    level,
    success,
    itemInSession
FROM raw.status_change_events
  );
  