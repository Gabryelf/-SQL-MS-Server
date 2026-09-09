SET DATEFORMAT dmy 
SELECT Cast('6.7.2026' AS date)

SET DATEFORMAT mdy
SELECT Cast('6.7.2026' AS date)

-- ошибка преобразования - нет такой даты
--SELECT Cast('61.71.2026' AS date)

-- return null
SELECT Try_Convert(date, '61.71.2026')

SELECT Parse('6.7.2026' AS date),
	   Parse('6.7.2026' AS date USING 'ru-RU'),
	   Parse('6.7.2026' AS date USING 'en-US')