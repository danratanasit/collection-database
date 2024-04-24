USE COLLECTION 

--DROP TABLE albums--
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'albums')
BEGIN
	CREATE TABLE albums (
		album_id UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID()
	,	album_name VARCHAR(MAX)
	,	artist_id UNIQUEIDENTIFIER 
	,	year_released INT
	,	CONSTRAINT fk_artist FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
	)
END
GO

DECLARE 
	@album_name VARCHAR(255)
,	@artist_name VARCHAR(255)

SELECT 
	@album_name = 'North From Here'
,	@artist_name = 'Sentenced'

INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Slow, Deep and Hard'
,	@artist_name = 'Type O Negative'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Asylun'
,	@artist_name = 'Neuraxis'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Hatebreeder'
,	@artist_name = 'Children of Bodom'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'In Their Darkened Shrines'
,	@artist_name = 'Nile'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Cryptic'
,	@artist_name = 'Edge of Sanity'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'At the Soundless Dawn'
,	@artist_name = 'Red Sparowes'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'An Anatomy Of The Beast'
,	@artist_name = 'Intestine Baalism'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Cosmic Genesis'
,	@artist_name = 'Vintersorg' 
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Hellbrigade'
,	@artist_name = 'Centinex'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Close To The Edge'
,	@artist_name = 'Yes'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'The American Way'
,	@artist_name = 'Sacred Reich'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Evilized'
,	@artist_name = 'Impious'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Soul Rot'
,	@artist_name = 'Disfigurement' 
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Twisted Into Form'
,	@artist_name = 'Forbidden'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Horrorscope'
,	@artist_name = 'Overkill'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Mirrorworlds'
,	@artist_name = 'Eucharist'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Messiah'
,	@artist_name = 'Steel Prophet'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'By Time Alone'
,	@artist_name = 'Orphanage'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'The Haunted Made Me Do It'
,	@artist_name = 'The Haunted'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Cracked Brain'
,	@artist_name = 'Destruction'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Whoracle'
,	@artist_name = 'In Flames'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'World Downfall'
,	@artist_name = 'Terrorizer'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Consuming Impulse'
,	@artist_name = 'Pestilence'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT 
	@album_name = 'Khaooohs And Kon-Fus-Ion'
,	@artist_name = 'Pan.Thy.Monium'
INSERT INTO albums (album_name, artist_id) 
SELECT @album_name, artist_id
FROM artists 
WHERE artist_name = @artist_name
AND NOT EXISTS (
	SELECT 1 FROM albums 
	WHERE album_name = @album_name
	AND artist_id = (
		SELECT artist_id
		FROM artists 
		WHERE artist_name = @artist_name
	)
)

SELECT a1.album_id, a1.artist_id, a2.artist_name, a1.album_name 
FROM albums a1
JOIN artists a2
	ON a1.artist_id = a2.artist_id
ORDER BY a2.artist_name, a1.album_name 
