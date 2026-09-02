DECLARE @Str1 varchar(20) = 'текст на русском',
		@Str2 varchar(20) = 'some eng text',
		@Str3 nvarchar(20) = N'此订阅中的数据库计数超过了当前限制。若要增加限制，请创建支持票证。'

--SELECT *
--FROM sys.Messages

SELECT @Str1, @Str2, @Str3