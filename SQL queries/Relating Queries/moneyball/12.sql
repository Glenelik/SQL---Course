WITH "least expensive player per RBI" AS
(SELECT players.id, players.first_name, players.last_name
FROM players
INNER JOIN performances ON performances.player_id = players.id
INNER JOIN salaries ON salaries.player_id = players.id AND salaries.year = performances.year
WHERE salaries.year = 2001 AND performances.year = 2001
GROUP BY players.id, players.first_name, players.last_name, salaries.salary
HAVING SUM(performances.RBI) > 0
ORDER BY (salaries.salary / SUM(performances.RBI)) ASC, players.first_name, players.last_name
LIMIT 10),

"least expensive player per HIT" AS
(SELECT players.id, players.first_name, players.last_name
FROM players
INNER JOIN performances ON performances.player_id = players.id
INNER JOIN salaries ON salaries.player_id = players.id AND salaries.year = performances.year
WHERE salaries.year = 2001 AND performances.year = 2001
GROUP BY players.id, players.first_name, players.last_name, salaries.salary
HAVING SUM(performances.H) > 0
ORDER BY (salaries.salary / SUM(performances.H)) ASC, players.first_name, players.last_name
LIMIT 10)

SELECT hit.last_name, hit.first_name
FROM "least expensive player per HIT" hit
INNER JOIN "least expensive player per RBI" rbi ON hit.id = rbi.id
ORDER BY hit.id ;

