SELECT teams.name
FROM teams
INNER JOIN performances ON performances.team_id = teams.id
INNER JOIN players ON players.id = performances.player_id
WHERE players.first_name = 'Satchel' and players.last_name = 'Paige'
GROUP BY teams.name ; 
