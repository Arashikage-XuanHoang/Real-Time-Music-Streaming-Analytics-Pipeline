
  
    

  create  table "sqlpad"."gold_"."dim_location__dbt_tmp"
  
  
    as
  
  (
    SELECT DISTINCT
    MD5(CONCAT(city, state, zip))   AS location_id,
    city,
    state,
    zip,
    lon,
    lat
FROM raw.listen_events
WHERE city IS NOT NULL

UNION

SELECT DISTINCT
    MD5(CONCAT(city, state, zip)),
    city, state, zip, lon, lat
FROM raw.page_view_events
WHERE city IS NOT NULL
  );
  