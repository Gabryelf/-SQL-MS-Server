DECLARE @Str1 char(20)

SET @Str1 = 'Hello'

SELECT @Str1, 
		'('+@Str1+')',
		Replace(@Str1,' ','.'),
		'('+Rtrim(@Str1)+')'