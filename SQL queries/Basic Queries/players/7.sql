SELECT COUNT(ID) AS 'Different hands for Batting and Throwing'
FROM players
WHERE (bats = 'L' AND throws = 'R') OR (bats = 'R' AND throws = 'L') ;

