/*
  The first witness transcript provides two key pieces of information to identify a suspect.
  Sub-queries are used to filter the person table based on those facts.
  Note the use of the LIKE operator: As we know only that the license plate number contains 'H42W',
  the value is wrapped in % to indicate that the value can occur at any point in the string. 
  Meanwhile, as we are told that the gym membership id value begins with 48Z, '48Z%' is used to indicate
  that the string must begin with those characters
*/

SELECT *
FROM person
WHERE license_id IN (
  SELECT id
  FROM drivers_license
  WHERE plate_number LIKE '%H42W%'
)
AND id IN (
  SELECT person_id
  FROM get_fit_now_member
  WHERE membership_status = 'gold'
  AND id LIKE '48Z%'
);

/*
  Returns one record, where id=67318
*/
