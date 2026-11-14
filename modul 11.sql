SELECT VERSION();
SELECT @@version_comment;
SHOW DATABASES;
SHOW ENGINES;
SHOW VARIABLES LIKE 'character_set_server';
SHOW VARIABLES LIKE 'collation_server';
SELECT JSON_VALID('{"nama":"Budi"}') AS json_valid, JSON_EXTRACT('{"nama":"Budi"}', '$.nama') AS nama;
SELECT NOW();
SELECT DATABASE();
