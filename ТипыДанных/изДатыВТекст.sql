DECLARE @DT2 datetime2 = SysDateTime()

SELECT Cast(@DT2 AS varchar),
	   Convert(varchar, @DT2),
	   Convert(varchar, @DT2, 102),
	   Convert(varchar, @DT2, 2)