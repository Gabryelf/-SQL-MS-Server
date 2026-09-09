DECLARE @DT datetime = GetDate(), -- 8
		@SDT smalldatetime = GetDate(), --4
		@DT2 datetime2 = SysDateTime(),
		@DT3 datetime = '2000-01-01',
		@D date = GetDate(),
		@T time(0) = SysDateTime(),
		@DTO datetimeoffset = SysDateTime()

SELECT @DT, @SDT

SELECT @DT - @DT3,
		Cast((@DT - @DT3) AS int)

SELECT @D, @T, @DTO