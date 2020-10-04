/*
  We now have various pieces of information that need to be stitched together, including the suspect's
    - partial plate number
    - partial gym membership id
    - gym membership status
    - gym check-in date
  Rather than combine a large number of sub-queries to piece these bits of information together,
  I used JOIN operators to combine the person, get_fit_now_member, get_fit_now_check_in, and drivers_license tables,
  and then filter the data based on the information from the transcripts. 
  This makes the query much easier to read.
  
  Only displaying the data from the person table in the result set as that is the information needed to continue
*/

SELECT p.*
FROM person p
JOIN get_fit_now_member gfnm
  ON p.id = gfnm.person_id
JOIN get_fit_now_check_in gfnc
  ON gfnm.id = gfnc.membership_id
JOIN drivers_license dl
  ON p.license_id = dl.id
WHERE dl.plate_number LIKE '%H42W%'
AND gfnm.membership_status = 'gold'
AND gfnm.id LIKE '48Z%'
AND gfnc.check_in_date = '20180109';

/*
  Returns one record, where person.id=67318
*/
