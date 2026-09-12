USE GLOB
GO

-- 1. Добавляем новый столбец с IDENTITY (он станет новым PK)
ALTER TABLE context.geo
ADD row_id INT IDENTITY(1,1) NOT NULL
GO

-- 2. Делаем его PRIMARY KEY сразу
ALTER TABLE context.geo
ADD CONSTRAINT PK_geo_row_id PRIMARY KEY (row_id)
GO

ALTER TABLE context.geo
DROP COLUMN id
GO