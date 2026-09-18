
-- Функции даты и времени
SELECT 
    GETDATE()                                  AS Сейчас,
    DATEADD(day, 7, GETDATE())                 AS ЧерезНеделю,
    DATEADD(month, -1, GETDATE())              AS МесяцНазад,
    DATEDIFF(day, '2024-01-01', GETDATE())     AS ДнейПрошло,
    DATENAME(month, GETDATE())                 AS НазваниеМесяца,
    YEAR(GETDATE())                            AS Год,
    MONTH(GETDATE())                           AS Месяц,
    DAY(GETDATE())                             AS День
