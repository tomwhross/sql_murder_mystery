/*
  Idea here is to use the result set from the previous query to find the interview transcript for the first witness.
  I could have hardcoded the person_id value from 03a but decided to use a subquery to avoid any hardcoding where possible.
*/

SELECT *
FROM interview
WHERE person_id = (
  SELECT id
  FROM person
  WHERE address_street_name = 'Northwestern Dr'
  ORDER BY address_number DESC
  LIMIT 1
);

/*
  Returns one record where person_id=14887
*/
