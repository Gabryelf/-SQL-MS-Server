USE GLOB

------------
CREATE TABLE styles.input_field2(
   id int Primary Key,
   name nvarchar(100)
)

-----------

INSERT 
INTO styles.input_field2(id, name) 
VALUES (3, N'panel-main')

SELECT @@Identity, 
		Scope_Identity()

SELECT *
FROM styles.input_field2