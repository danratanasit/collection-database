USE COLLECTION 

--DROP TABLE themes
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'themes')
BEGIN
	CREATE TABLE themes (
		theme_id UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID()
	,	theme_type_id UNIQUEIDENTIFIER 
	,	theme_description VARCHAR(MAX)
	,	CONSTRAINT fk_theme_type FOREIGN KEY (theme_type_id) REFERENCES theme_types(theme_type_id)
	)
END
GO

DECLARE 
	@theme_description VARCHAR(255)
,	@theme_type_desc VARCHAR(255)

SET @theme_type_desc = 'Album color'

-- INSERT INTO lists (list_date) VALUES ('10/24/2023') -- green
SET @theme_description = 'Green' 

INSERT INTO themes (theme_type_id, theme_description)
SELECT theme_type_id, @theme_description 
FROM theme_types 
WHERE theme_type_desc = @theme_type_desc 
AND NOT EXISTS (
	SELECT 1
	FROM themes 
	WHERE theme_description = @theme_description 
	AND EXISTS (
		SELECT 1
		FROM theme_types 
		WHERE theme_type_desc = @theme_type_desc 
	)
)

-- INSERT INTO lists (list_date) VALUES ('8/8/2023') -- red
SET @theme_description = 'Red' 

INSERT INTO themes (theme_type_id, theme_description)
SELECT theme_type_id, @theme_description 
FROM theme_types 
WHERE theme_type_desc = @theme_type_desc 
AND NOT EXISTS (
	SELECT 1
	FROM themes 
	WHERE theme_description = @theme_description 
	AND EXISTS (
		SELECT 1
		FROM theme_types 
		WHERE theme_type_desc = @theme_type_desc 
	)
)

-- INSERT INTO lists (list_date) VALUES ('9/18/2023') -- black
SET @theme_description = 'Black' 

INSERT INTO themes (theme_type_id, theme_description)
SELECT theme_type_id, @theme_description 
FROM theme_types 
WHERE theme_type_desc = @theme_type_desc 
AND NOT EXISTS (
	SELECT 1
	FROM themes 
	WHERE theme_description = @theme_description 
	AND EXISTS (
		SELECT 1
		FROM theme_types 
		WHERE theme_type_desc = @theme_type_desc 
	)
)

-- INSERT INTO lists (list_date) VALUES ('8/15/2023') -- orange
SET @theme_description = 'Orange'

INSERT INTO themes (theme_type_id, theme_description)
SELECT theme_type_id, @theme_description 
FROM theme_types 
WHERE theme_type_desc = @theme_type_desc 
AND NOT EXISTS (
	SELECT 1
	FROM themes 
	WHERE theme_description = @theme_description 
	AND EXISTS (
		SELECT 1
		FROM theme_types 
		WHERE theme_type_desc = @theme_type_desc 
	)
)

-- INSERT INTO lists (list_date) VALUES ('8/23/2023') -- purple
SET @theme_description = 'Purple' 

INSERT INTO themes (theme_type_id, theme_description)
SELECT theme_type_id, @theme_description 
FROM theme_types 
WHERE theme_type_desc = @theme_type_desc 
AND NOT EXISTS (
	SELECT 1
	FROM themes 
	WHERE theme_description = @theme_description 
	AND EXISTS (
		SELECT 1
		FROM theme_types 
		WHERE theme_type_desc = @theme_type_desc 
	)
)

-- INSERT INTO lists (list_date) VALUES ('9/26/2023') -- black & white
SET @theme_description = 'Black & White' 

INSERT INTO themes (theme_type_id, theme_description)
SELECT theme_type_id, @theme_description 
FROM theme_types 
WHERE theme_type_desc = @theme_type_desc 
AND NOT EXISTS (
	SELECT 1
	FROM themes 
	WHERE theme_description = @theme_description 
	AND EXISTS (
		SELECT 1
		FROM theme_types 
		WHERE theme_type_desc = @theme_type_desc 
	)
)

SET @theme_type_desc = 'Album letter'
SET @theme_description = 'C' 

INSERT INTO themes (theme_type_id, theme_description)
SELECT theme_type_id, @theme_description 
FROM theme_types 
WHERE theme_type_desc = @theme_type_desc 
AND NOT EXISTS (
	SELECT 1
	FROM themes 
	WHERE theme_description = @theme_description 
	AND EXISTS (
		SELECT 1
		FROM theme_types 
		WHERE theme_type_desc = @theme_type_desc 
	)
)


SET @theme_description = 'E' 

INSERT INTO themes (theme_type_id, theme_description)
SELECT theme_type_id, @theme_description 
FROM theme_types 
WHERE theme_type_desc = @theme_type_desc 
AND NOT EXISTS (
	SELECT 1
	FROM themes 
	WHERE theme_description = @theme_description 
	AND EXISTS (
		SELECT 1
		FROM theme_types 
		WHERE theme_type_desc = @theme_type_desc 
	)
)

SET @theme_description = 'F' 

INSERT INTO themes (theme_type_id, theme_description)
SELECT theme_type_id, @theme_description 
FROM theme_types 
WHERE theme_type_desc = @theme_type_desc 
AND NOT EXISTS (
	SELECT 1
	FROM themes 
	WHERE theme_description = @theme_description 
	AND EXISTS (
		SELECT 1
		FROM theme_types 
		WHERE theme_type_desc = @theme_type_desc 
	)
)

SET @theme_type_desc = 'Artist letter'
SET @theme_description = 'M' 

INSERT INTO themes (theme_type_id, theme_description)
SELECT theme_type_id, @theme_description 
FROM theme_types 
WHERE theme_type_desc = @theme_type_desc 
AND NOT EXISTS (
	SELECT 1
	FROM themes 
	WHERE theme_description = @theme_description 
	AND EXISTS (
		SELECT 1
		FROM theme_types 
		WHERE theme_type_desc = @theme_type_desc 
	)
)

SELECT t1.*, t2.theme_type_desc 
FROM themes t1
JOIN theme_types t2
	ON t1.theme_type_id = t2.theme_type_id
order by t2.theme_type_desc, t1.theme_description
