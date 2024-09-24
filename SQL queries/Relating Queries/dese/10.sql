SELECT districts.name, expenditures.per_pupil_expenditure
FROM districts INNER JOIN expenditures ON districts.id = expenditures.district_id
WHERE UPPER(districts.type)= 'PUBLIC SCHOOL DISTRICT'
ORDER BY expenditures.per_pupil_expenditure DESC
LIMIT 10 ;
