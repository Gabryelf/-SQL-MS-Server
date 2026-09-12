USE GLOB
GO

-- Удаляем NULL записи
DELETE FROM context.geo WHERE id IS NULL
GO

-- Добавляем IDENTITY (только если id не был IDENTITY)
ALTER TABLE context.geo
DROP COLUMN id
GO

ALTER TABLE context.geo
ADD id INT IDENTITY(1,1) NOT NULL
GO

ALTER TABLE context.geo
ADD CONSTRAINT PK_geo_Id PRIMARY KEY (id)
GO