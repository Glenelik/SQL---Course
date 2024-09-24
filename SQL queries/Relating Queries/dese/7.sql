SELECT schools.name FROM schools INNER JOIN Districts ON districts.id = schools.district_id WHERE districts.name = 'Cambridge' ;
