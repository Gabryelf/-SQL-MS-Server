-- Строковые функции

SELECT 
    LEFT(N'Привет, мир', 6)                    AS Слева,       -- 'Привет'
    RIGHT(N'Привет, мир', 3)                   AS Справа,      -- 'мир'
    SUBSTRING(N'Привет, мир', 9, 3)            AS Середина,    -- 'мир'
    LEN(N'Привет')                             AS Длина,       -- 6
    REPLACE(N'Привет, мир', N'мир', N'SQL')    AS Замена,      -- 'Привет, SQL'
    UPPER(N'привет')                           AS ВВерх,       -- 'ПРИВЕТ'
    LOWER(N'ПРИВЕТ')                           AS ВНиз,        -- 'привет'
    CONCAT(N'Иван', N' ', N'Иванов')           AS Склейка,     -- 'Иван Иванов'
    TRIM(N'  пробел  ')                        AS Обрезка;     -- 'пробел'

USE ShopDB
go
SELECT 
    full_name,
    LEFT(full_name, CHARINDEX(' ', full_name) - 1)  AS Имя,
    SUBSTRING(full_name, CHARINDEX(' ', full_name) + 1, 100) AS Фамилия
FROM Customers;