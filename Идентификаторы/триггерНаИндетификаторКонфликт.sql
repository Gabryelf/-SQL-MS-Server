USE GLOB
CREATE TABLE styles.footer(
	id int IDENTITY(1,1),
	name nvarchar(100),
	content text
)
go
CREATE TRIGGER TrigId
	ON styles.header
	FOR INSERT
AS
	INSERT
	INTO styles.footer(name, content)
	VALUES ('button-cofirm', 'background: #000')
go