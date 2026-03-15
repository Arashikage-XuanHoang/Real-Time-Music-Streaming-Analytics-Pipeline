
  
    

  create  table "sqlpad"."gold_"."dim_songs__dbt_tmp"
  
  
    as
  
  (
    SELECT DISTINCT
    MD5(CONCAT(song, artist))   AS song_id,
    song,
    artist,
    duration
FROM raw.listen_events
WHERE song IS NOT NULL
  AND artist IS NOT NULL
  );
  