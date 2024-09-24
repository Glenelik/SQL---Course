SELECT CONCAT(first_name, ' ', last_name) AS "USA by Youngest Player Full Name" 
FROM players
WHERE birth_country = 'USA'
ORDER BY birth_year DESC, birth_month DESC, birth_day DESC ;

