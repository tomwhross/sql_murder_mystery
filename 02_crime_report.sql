/*
  From the mystery's description:
    "A crime has taken place and the detective needs your help.
    The detective gave you the crime scene report, but you somehow lost it.
    You vaguely remember that the crime was a ​murder​ that occurred sometime on ​Jan.15, 2018​ 
      and that it took place in ​SQL City​.
    Start by retrieving the corresponding crime scene report from the police department’s database."

  Want to get a list of murders that were reported or occured in SQL City on Jan 15, 2018
*/

SELECT description
FROM crime_scene_report
WHERE city = 'SQL City'
  AND type = 'murder'
	AND date = '20180115';
  
/*
  Returns one record with description equal to:
    'Security footage shows that there were 2 witnesses.
    The first witness lives at the last house on "Northwestern Dr".
    The second witness, named Annabel, lives somewhere on "Franklin Ave".'
*/
