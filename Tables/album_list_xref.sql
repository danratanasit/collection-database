USE COLLECTION 

--DROP TABLE album_list_xref
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'album_list_xref')
BEGIN
	CREATE TABLE album_list_xref (
		album_id UNIQUEIDENTIFIER
	,	list_id UNIQUEIDENTIFIER
	,	CONSTRAINT fk_album_list_album FOREIGN KEY (album_id) REFERENCES albums(album_id)
	,	CONSTRAINT fk_album_list_list FOREIGN KEY (list_id) REFERENCES lists(list_id)
	)
END
GO

DECLARE @list_id UNIQUEIDENTIFIER
SELECT @list_id = list_id FROM lists WHERE list_date = '10/24/2023'
INSERT INTO album_list_xref (album_id, list_id) 
SELECT album_id, @list_id FROM albums
WHERE album_name IN (
	'Hellbrigade'
,	'Hatebreeder'
,	'Cracked Brain'
,	'Soul Rot'
,	'Cryptic'
,	'Mirrorworlds'
,	'Twisted Into Form'
,	'Evilized'
,	'Whoracle'
,	'An Anatomy Of The Beast'
,	'Asylun'
,	'In Their Darkened Shrines'
,	'By Time Alone'
,	'Horrorscope'
,	'Khaooohs And Kon-Fus-Ion'
,	'Consuming Impulse'
,	'At the Soundless Dawn'
,	'The American Way'
,	'North From Here'
,	'Messiah'
,	'World Downfall'
,	'The Haunted Made Me Do It'
,	'Slow, Deep and Hard'
,	'Cosmic Genesis'
,	'Close To The Edge'
)

SELECT x.*, l.list_date, a.album_name 
FROM album_list_xref x
JOIN albums a
	ON x.album_id = a.album_id
JOIN lists l
	ON x.list_id = l.list_id
ORDER BY l.list_date, a.album_name 
