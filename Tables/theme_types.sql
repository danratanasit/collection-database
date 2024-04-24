USE COLLECTION 

--DROP TABLE theme_types
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'theme_types')
BEGIN
	CREATE TABLE theme_types (
		theme_type_id UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID()
	,	theme_type_desc VARCHAR(MAX)
	)
END
GO

DECLARE @theme_type_desc VARCHAR(255)

SET @theme_type_desc = 'Album color'
INSERT INTO theme_types (theme_type_desc) 
SELECT @theme_type_desc WHERE NOT EXISTS (SELECT 1 FROM theme_types WHERE theme_type_desc = @theme_type_desc)

SET @theme_type_desc = 'Album letter'
INSERT INTO theme_types (theme_type_desc) 
SELECT @theme_type_desc WHERE NOT EXISTS (SELECT 1 FROM theme_types WHERE theme_type_desc = @theme_type_desc)

SET @theme_type_desc = 'Album year'
INSERT INTO theme_types (theme_type_desc) 
SELECT @theme_type_desc WHERE NOT EXISTS (SELECT 1 FROM theme_types WHERE theme_type_desc = @theme_type_desc)

SET @theme_type_desc = 'Artist letter'
INSERT INTO theme_types (theme_type_desc) 
SELECT @theme_type_desc WHERE NOT EXISTS (SELECT 1 FROM theme_types WHERE theme_type_desc = @theme_type_desc)

SELECT * FROM theme_types


