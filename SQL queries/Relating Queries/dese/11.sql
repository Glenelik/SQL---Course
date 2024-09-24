SELECT schools.name, expenditures.per_pupil_expenditure, graduation_rates.graduated
FROM schools
INNER JOIN expenditures ON schools.district_id = expenditures.district_id
INNER JOIN graduation_rates ON graduation_rates.school_id = schools.id
ORDER BY expenditures.per_pupil_expenditure DESC, schools.name ASC ;
