/*
  Crime scene report said the first witness lived at the last house
  on Northwestern Dr. Assuming sequential house numbers,
  select all the houses on Northwestern Dr., order them by the address numbers
  in reverse order, and them limit to one result
*/

SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;

/*
  Returns one record:
    | id    | name           | license_id  | address_number | address_street_number | ssn       |
    | ----- | -------------- | ----------- | -------------- | --------------------- | --------- |
    | 14887 | Morty Schapiro | 118009      | 4919           | Northwestern Dr       | 111564949 |
*/
