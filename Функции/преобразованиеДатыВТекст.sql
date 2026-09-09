DECLARE @DT2 datetime2 = SysDateTime()

SELECT Cast(@DT2 AS varchar),
	   Convert(varchar, @DT2)

SELECT Convert(varchar, @DT2, 1),
	   Convert(varchar, @DT2, 101)