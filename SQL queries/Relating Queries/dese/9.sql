SELECT districts.name FROM districts INNER JOIN expenditures ON districts.id = expenditures.district_id WHERE expenditures.pupils =(SELECT MIN(expenditures.pupils) FROM expenditures);
