USE COLLECTION 

--DROP TABLE artists
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'artists')
BEGIN
	CREATE TABLE artists (
		artist_id UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID()
	,	artist_name VARCHAR(MAX)
	)
END
GO

DECLARE @artist_name VARCHAR(255)

SET @artist_name = 'Sentenced'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Type O Negative'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Neuraxis'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Children of Bodom'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Nile'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Edge of Sanity'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Red Sparowes'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Intestine Baalism'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Vintersorg'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Centinex'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Yes'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Sacred Reich'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Impious'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Disfigurement'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Forbidden'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Overkill'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Eucharist'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Steel Prophet'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Orphanage'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'The Haunted'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Destruction'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'In Flames'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Terrorizer'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Pestilence'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SET @artist_name = 'Pan.Thy.Monium'
INSERT INTO artists (artist_name) 
SELECT @artist_name WHERE NOT EXISTS (SELECT 1 FROM artists WHERE artist_name = @artist_name) 

SELECT *
FROM artists 
ORDER BY artist_name 
