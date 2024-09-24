SELECT districts.name,staff_evaluations.exemplary,expenditures.per_pupil_expenditure
FROM districts
INNER JOIN expenditures ON districts.id = expenditures.district_id
INNER JOIN staff_evaluations ON districts.id = staff_evaluations.district_id
WHERE districts.type = 'Public School District'
AND expenditures.per_pupil_expenditure > (SELECT AVG(per_pupil_expenditure) FROM expenditures)
AND staff_evaluations.exemplary > (SELECT AVG(exemplary) FROM staff_evaluations)
ORDER BY staff_evaluations.exemplary DESC, expenditures.per_pupil_expenditure DESC;

