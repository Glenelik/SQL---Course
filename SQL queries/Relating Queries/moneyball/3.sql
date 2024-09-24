SELECT year, HR
FROM performances
INNER JOIN players ON players.id = performances.player_id
WHERE players.first_name = 'Ken' AND players.last_name = 'Griffey' AND players.birth_year = 1969
GROUP BY year
ORDER BY year DESC;
