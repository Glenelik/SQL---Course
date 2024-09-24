
-- *** The Lost Letter ***
-- First I am trying to find the ID of the addresses: from and to which the package was delivered
SELECT id FROM addresses WHERE address = '900 Somerville Avenue';
SELECT id from addresses WHERE address = '2 Finnegan Street' ;
-- I am not getting any results for the 2nd location, which is where the package was sent, i am using a string in the street name to find matching results in the BD
SELECT address FROM addresses WHERE address LIKE '%Fin%';
-- I now know that the actual address is '2 Finnigan Street', so i proceed with finding the ID of the address
SELECT id from addresses WHERE address = '2 Finnigan Street' ;
-- Now i am using my address ID's to fin the packages that were sent. Result - only one package was found
SELECT id FROM packages WHERE from_address_id = 432 and to_address_id = 854
-- Here i am using my package ID to find all of the information about the package, and see that package was delivered at the correct location, the same day it was sent.
SELECT * From scans WHERE package_id = 384

-- *** The Devious Delivery ***
-- The only information we have about the package, is that it has no address from where the package was sent, so we preoceed to look for a null value in the from_address
SELECT id FROM packages WHERE from_address_id IS NULL
-- We now have the ID of the package, and we proceed to get more info about the package knowing that there is only one ID with null info
SELECT * FROM packages WHERE from_address_id IS NULL ;
-- Now we have the address ID, and we can proceed to find where the package was delivered
SELECT * from scans WHERE package_id = 5098 ;
-- We now have the ID of the address, lets find the address it self
SELECT * from addresses WHERE id = 348

-- *** The Forgotten Gift ***
-- Same as in the firt task, lets find the IDs of the addresses where from and to the package was sent
SELECT ID from addresses WHERE address = '728 Maple Place'
SELECT ID from addresses WHERE address = '109 Tileston Street'
-- Now we have the IDs of the needed addresses, we can proceed looking for the package and it's content
SELECT * FROM packages WHERE from_address_id = 9873 and to_address_id = 4983 ;
-- Lets now try to find where the package actually is
SELECT * from scans WHERE package_id = 9523
-- We now know that the package was delivered and later picked-up by a firrent courier, lets find his name
SELECT * from drivers where id = 17

