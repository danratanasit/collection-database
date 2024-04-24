USE COLLECTION 

-- DROP TABLE list_themes_xref
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'list_themes_xref')
BEGIN
	CREATE TABLE list_themes_xref (
		list_id UNIQUEIDENTIFIER
	,	theme_id UNIQUEIDENTIFIER
	,	CONSTRAINT fk_list_themes_list FOREIGN KEY (list_id) REFERENCES lists(list_id)
	,	CONSTRAINT fk_list_themes_theme FOREIGN KEY (theme_id) REFERENCES themes(theme_id)
	)
END
GO

DECLARE 
	@list_id UNIQUEIDENTIFIER
,	@theme_id UNIQUEIDENTIFIER

SELECT @list_id = list_id FROM lists WHERE list_date = '10/24/2023'
SELECT @theme_id = t1.theme_id
FROM themes t1
WHERE t1.theme_description = 'Green'
AND EXISTS (
	SELECT 1
	FROM theme_types t2
	WHERE t1.theme_type_id = t2.theme_type_id
	AND t2.theme_type_desc = 'Album color'
)

INSERT INTO list_themes_xref (list_id, theme_id) 
SELECT @list_id, @theme_id WHERE NOT EXISTS (SELECT 1 FROM list_themes_xref WHERE list_id = @list_id AND theme_id = @theme_id)

SELECT * FROM list_themes_xref 
