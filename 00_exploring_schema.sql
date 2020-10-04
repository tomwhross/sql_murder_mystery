/*
  This query is provided by the mystery.
  Returns the names of all tables in the database.
  Note that the challenge is done with SQLite, and this query is specific to it.
*/

SELECT name 
  FROM sqlite_master
 where type = 'table'
 
