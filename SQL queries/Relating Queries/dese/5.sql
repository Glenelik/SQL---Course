SELECT city, COUNT(name) FROM schools WHERE UPPER(type) = 'PUBLIC SCHOOL' GROUP BY city HAVING COUNT(name) <= 3 ORDER BY COUNT(name) DESC, city ASC ;
