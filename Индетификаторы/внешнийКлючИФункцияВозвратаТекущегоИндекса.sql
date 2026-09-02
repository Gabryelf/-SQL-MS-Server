USE GLOB
go
------------
CREATE TABLE styles.panels_modal(
   id int Primary Key IDENTITY(1,1),
   name nvarchar(100)
)
go
------------
INSERT INTO styles.panels_modal(name) 
VALUES (N'panel-main')
go
------------
SELECT IDENT_CURRENT('styles.panels_modal') AS current_id

------------

SELECT *
FROM styles.panels_modal
go