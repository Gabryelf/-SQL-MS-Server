SELECT 
    @@VERSION                    AS ВерсияСервера,
    @@SERVERNAME                 AS ИмяСервера,
    @@SPID                       AS МойПроцессID,
    DB_NAME()                    AS ТекущаяБаза,
    SUSER_NAME()                 AS ТекущийЛогин,
    GETDATE()                    AS Время