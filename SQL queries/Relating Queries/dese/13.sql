--I want to know what are the worst 10 districts that need improvement from the staff evaluations perspective
SELECT districts.name,
       staff_evaluations.needs_improvement,
       staff_evaluations.unsatisfactory,
       (staff_evaluations.needs_improvement + staff_evaluations.unsatisfactory) AS total_low_ratings
FROM districts
INNER JOIN staff_evaluations ON districts.id = staff_evaluations.district_id
WHERE UPPER(districts.type) = 'PUBLIC SCHOOL DISTRICT'
GROUP BY districts.name
ORDER BY total_low_ratings DESC
LIMIT 10;



