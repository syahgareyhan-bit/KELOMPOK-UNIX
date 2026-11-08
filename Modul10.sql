SELECT @@version_comment;
SELECT table_name, engine from information_schema.tables
WHERE  table_schema = "motomind";
