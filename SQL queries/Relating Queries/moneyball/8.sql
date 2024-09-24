SELECT salaries.salary
FROM salaries
INNER JOIN performances ON salaries.player_id = performances.player_id
WHERE performances.year = 2001
AND performances.HR = (SELECT MAX(HR) FROM performances WHERE year = 2001)
AND salaries.year= 2001
LIMIT 1;
