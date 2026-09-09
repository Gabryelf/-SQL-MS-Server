SELECT 1 + 1, 
	  '1' + '1',
	  '1' + 1,
	  '1' + Cast(1 AS varchar),
	  '1' + Convert(varchar, 1)
go

DECLARE @t1 text = '1111'
SELECT Len(Cast(@t1 AS varchar(max)))
go

