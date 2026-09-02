USE GLOB
go
CREATE TABLE styles.main(
	id int IDENTITY(1,1),
	name nvarchar(100),
	content text
)
go