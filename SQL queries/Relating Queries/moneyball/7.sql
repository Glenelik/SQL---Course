SELECT players.first_name, players.last_name
FROM players
INNER JOIN salaries ON salaries.player_id = players.id
WHERE players.debut IS NOT NULL
AND salaries.salary = (SELECT MAX(salaries.salary) FROM salaries)
ORDER BY players.id
LIMIT 1;
