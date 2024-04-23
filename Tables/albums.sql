--DROP TABLE albums--
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'albums')
BEGIN
	CREATE TABLE albums (
		album_id UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID()
	,	album_name VARCHAR(MAX)
	,	artist_id UNIQUEIDENTIFIER 
	,	year_released INT
	)
END
GO

INSERT INTO albums (album_name) VALUES ('North From Here')
INSERT INTO albums (album_name) VALUES ('Slow, Deep and Hard')
INSERT INTO albums (album_name) VALUES ('Asylun')
INSERT INTO albums (album_name) VALUES ('Hatebreeder')
INSERT INTO albums (album_name) VALUES ('In Their Darkened Shrines')
INSERT INTO albums (album_name) VALUES ('Cryptic')
INSERT INTO albums (album_name) VALUES ('At the Soundless Dawn')
INSERT INTO albums (album_name) VALUES ('An Anatomy Of The Beast')
INSERT INTO albums (album_name) VALUES ('Cosmic Genesis')
INSERT INTO albums (album_name) VALUES ('Hellbrigade')
INSERT INTO albums (album_name) VALUES ('Close To The Edge')
INSERT INTO albums (album_name) VALUES ('The American Way')
INSERT INTO albums (album_name) VALUES ('Evilized')
INSERT INTO albums (album_name) VALUES ('Soul Rot')
INSERT INTO albums (album_name) VALUES ('Twisted Into Form')
INSERT INTO albums (album_name) VALUES ('Horrorscope')
INSERT INTO albums (album_name) VALUES ('Mirrorworlds')
INSERT INTO albums (album_name) VALUES ('Messiah')
INSERT INTO albums (album_name) VALUES ('By Time Alone')
INSERT INTO albums (album_name) VALUES ('The Haunted Made Me Do It')
INSERT INTO albums (album_name) VALUES ('Cracked Brain')
INSERT INTO albums (album_name) VALUES ('Whoracle')
INSERT INTO albums (album_name) VALUES ('World Downfall')
INSERT INTO albums (album_name) VALUES ('Consuming Impulse')
INSERT INTO albums (album_name) VALUES ('Khaooohs And Kon-Fus-Ion')

UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Sentenced') WHERE album_name = 'North From Here'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Type O Negative') WHERE album_name = 'Slow, Deep and Hard'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Neuraxis') WHERE album_name = 'Asylun'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Children of Bodom') WHERE album_name = 'Hatebreeder'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Nile') WHERE album_name = 'In Their Darkened Shrines'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Edge of Sanity') WHERE album_name = 'Cryptic'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Red Sparowes') WHERE album_name = 'At the Soundless Dawn'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Intestine Baalism') WHERE album_name = 'An Anatomy Of The Beast'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Vintersorg') WHERE album_name = 'Cosmic Genesis'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Centinex') WHERE album_name = 'Hellbrigade'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Yes') WHERE album_name = 'Close To The Edge'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Sacred Reich') WHERE album_name = 'The American Way'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Impious') WHERE album_name = 'Evilized'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Disfigurement') WHERE album_name = 'Soul Rot'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Forbidden') WHERE album_name = 'Twisted Into Form'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Overkill') WHERE album_name = 'Horrorscope'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Eucharist') WHERE album_name = 'Mirrorworlds'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Steel Prophet') WHERE album_name = 'Messiah'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Orphanage') WHERE album_name = 'By Time Alone'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'The Haunted') WHERE album_name = 'The Haunted Made Me Do It'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Destruction') WHERE album_name = 'Cracked Brain'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'In Flames') WHERE album_name = 'Whoracle'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Terrorizer') WHERE album_name = 'World Downfall'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Pestilence') WHERE album_name = 'Consuming Impulse'
UPDATE albums SET artist_id = (SELECT artist_id FROM artists WHERE artist_name = 'Pan.Thy.Monium') WHERE album_name = 'Khaooohs And Kon-Fus-Ion'

select * from albums
