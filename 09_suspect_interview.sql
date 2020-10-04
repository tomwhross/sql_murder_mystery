/*
  The case is not yet solved! Here I am just hardcoding Jeremy Bower's person.id value into the query to get
  the transcript, but I could have used a sub-query with the corraborating evidence query
*/

SELECT *
FROM interview
WHERE person_id = 67318;

/*
  Returns one record, with transcript equal to the following:
    'I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67").
    She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.'
*/
