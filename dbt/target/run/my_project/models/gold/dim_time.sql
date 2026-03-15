
  
    

  create  table "sqlpad"."gold_"."dim_time__dbt_tmp"
  
  
    as
  
  (
    SELECT DISTINCT
    ts,
    TO_TIMESTAMP(ts / 1000)                        AS datetime,
    EXTRACT(HOUR FROM TO_TIMESTAMP(ts / 1000))     AS hour,
    EXTRACT(DAY FROM TO_TIMESTAMP(ts / 1000))      AS day,
    EXTRACT(WEEK FROM TO_TIMESTAMP(ts / 1000))     AS week,
    EXTRACT(MONTH FROM TO_TIMESTAMP(ts / 1000))    AS month,
    EXTRACT(YEAR FROM TO_TIMESTAMP(ts / 1000))     AS year,
    EXTRACT(DOW FROM TO_TIMESTAMP(ts / 1000))      AS weekday
FROM raw.listen_events
WHERE ts IS NOT NULL
  );
  