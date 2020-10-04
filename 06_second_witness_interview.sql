/*
  Changed up my approach here slightly, skipping the step of independently finding the second witness' id,
  since it is to be used to locate the interview transscript.
*/

SELECT *
FROM interview
WHERE person_id = (
  SELECT id
  FROM person
  WHERE name LIKE 'Annabel%'
  AND address_street_name = 'Franklin Ave'
);

/*
  Returns one record, where person_id=16371
/*
