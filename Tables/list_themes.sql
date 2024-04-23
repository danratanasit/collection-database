IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'list_themes')
BEGIN
	CREATE TABLE list_themes (
		theme_id UNIQUEIDENTIFIER
	,	theme_description VARCHAR(MAX)
	)
END
GO
