/*
  This query is provided by the challenge.
  Returns the DDL (CREATE statement) of specified table, listing column names and types
*/

SELECT sql 
  FROM sqlite_master
 where name = 'crime_scene_report'
 
