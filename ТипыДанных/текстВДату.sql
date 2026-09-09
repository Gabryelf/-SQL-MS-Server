SET DATEFORMAT dmy

SELECT Cast('1.2.2020' AS date)

SET DATEFORMAT mdy

SELECT Cast('1.2.2020' AS date)

SELECT Try_Convert(date, '41.2.2020')

SELECT Parse('1.2.2020' AS date),
	   Parse('1.2.2020' AS date USING 'en-US')