SELECT season
FROM episodes
WHERE episode_in_season > 5 AND air_date >= '2020-01-01'
GROUP BY season ;

