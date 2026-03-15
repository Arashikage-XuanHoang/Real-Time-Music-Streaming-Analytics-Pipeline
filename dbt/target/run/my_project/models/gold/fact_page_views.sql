
  
    

  create  table "sqlpad"."gold_"."fact_page_views__dbt_tmp"
  
  
    as
  
  (
    SELECT
    MD5(CONCAT(ts::TEXT, userId::TEXT, sessionId::TEXT, page)) AS view_id,
    ts,
    userId          AS user_id,
    MD5(CONCAT(city, state, zip))   AS location_id,
    sessionId       AS session_id,
    itemInSession   AS item_in_session,
    page,
    method,
    status,
    auth,
    level
FROM raw.page_view_events
WHERE ts IS NOT NULL
  );
  