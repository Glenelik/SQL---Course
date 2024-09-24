SELECT players.first_name, players.last_name, salaries.salary / SUM(performances.H) AS "dollar per hit"
FROM players
INNER JOIN performances ON performances.player_id = players.id
INNER JOIN salaries ON salaries.player_id = players.id and salaries.year = performances.year
WHERE salaries.year = 2001 and performances.year = 2001
GROUP BY players.id, salaries.salary
HAVING SUM(performances.H) > 0
ORDER BY "dollar per hit" ASC, players.first_name ASC, players.last_name ASC
LIMIT 10;
