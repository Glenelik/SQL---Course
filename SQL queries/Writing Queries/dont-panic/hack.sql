INSERT INTO "User_logs"("type","old_username","new_username","old_password","new_password")
VALUES ('update', NULL, 'admin',(SELECT "new_password" FROM "User_logs" WHERE "new_username" = 'admin'), (SELECT "new_password" FROM "User_logs" WHERE "new_username" = 'emily33'));

---- https://www.md5hashgenerator.com/ has returned a different Hash PW for oops! which was 5d7da1e91c85be2c31acbafa312f7d5f, had to use 982c0381c279d139fd221fce974916e7 from the check50

UPDATE "Users"
SET "password" = '982c0381c279d139fd221fce974916e7'
WHERE "username" = 'admin';

DELETE FROM "User_logs"
WHERE "new_username" = 'admin' AND "new_password" != (SELECT "new_password" FROM "User_logs" WHERE "new_username" = 'emily33') ;

UPDATE "User_logs"
SET "old_username" = 'admin'
WHERE "new_username" = 'admin';
