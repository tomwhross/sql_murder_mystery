/*
  The previous suspect provided some clues and evidence, including the real killer's:
    - approximate height range
    - hair colour
    - car make and model
    - gender
    - and that they attended the SQL Symphony Concert three times in December, 2018
  The suspect also said the real killer hired him for a lot of money, but did not indicate how much money, or how
  that information would be useful in the context of the income table
    e.g. would the real killer have the highest income?
  I've not used that piece of information here as I was able to locate a single person without it.
  
  I've combined a few clauses and operators here. New is joining to a sub-query that is perfoming an aggregate and filtering on it
*/

SELECT p.*
FROM person p
JOIN drivers_license dl
	ON p.license_id = dl.id
JOIN (
  SELECT person_id, count(event_name) AS attendance_count
	FROM facebook_event_checkin fe
	WHERE fe.event_name = 'SQL Symphony Concert'
	AND fe.date >= '20171201' AND fe.date < '20180101'
	GROUP BY person_id
	HAVING attendance_count = 3
) fe
	ON p.id = fe.person_id
WHERE dl.hair_color = 'red'
AND dl.gender = 'female'
AND dl.car_make = 'Tesla'
AND dl.car_model = 'Model S'
AND dl.height >= 65 AND dl.height <= 67;

/*
  Returns one record, where person.id=99716
*/
