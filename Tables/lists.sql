USE COLLECTION 

-- DROP TABLE lists
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'lists')
BEGIN
	CREATE TABLE lists (
		list_id UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID()
	,	list_date DATETIME
	)
END
GO

DECLARE @list_date DATETIME

SET @list_date = '10/24/2023'
INSERT INTO lists (list_date) -- VALUES ('10/24/2023') -- green
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '8/8/2023'
INSERT INTO lists (list_date) -- VALUES ('8/8/2023') -- red
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '9/18/2023'
INSERT INTO lists (list_date) -- VALUES ('9/18/2023') -- black
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '8/15/2023'
INSERT INTO lists (list_date) -- VALUES ('8/15/2023') -- orange
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '8/23/2023'
INSERT INTO lists (list_date) -- VALUES ('8/23/2023') -- purple
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '9/26/2023'
INSERT INTO lists (list_date) -- VALUES ('9/26/2023') -- black & white
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '3/17/2024'
INSERT INTO lists (list_date) -- VALUES ('3/17/2024') -- album C, album E
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '4/21/2024'
INSERT INTO lists (list_date) -- VALUES ('4/21/2024') -- album F
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '3/27/2024'
INSERT INTO lists (list_date) -- VALUES ('3/27/2024') -- album E
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '3/31/2024'
INSERT INTO lists (list_date) -- VALUES ('3/31/2024') -- album E
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '4/15/2024'
INSERT INTO lists (list_date) -- VALUES ('4/15/2024') -- album F
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '9/5/2023'
INSERT INTO lists (list_date) -- VALUES ('9/5/2023') -- artist M
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '9/8/2023'
INSERT INTO lists (list_date) -- VALUES ('9/8/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '2/17/2024'
INSERT INTO lists (list_date) -- VALUES ('2/17/2024') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '5/1/2023'
INSERT INTO lists (list_date) -- VALUES ('5/1/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '11/20/2023'
INSERT INTO lists (list_date) -- VALUES ('11/20/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '2/10/2023'
INSERT INTO lists (list_date) -- VALUES ('2/10/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '6/12/2023'
INSERT INTO lists (list_date) -- VALUES ('6/12/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '6/26/2023'
INSERT INTO lists (list_date) -- VALUES ('6/26/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '7/3/2023'
INSERT INTO lists (list_date) -- VALUES ('7/3/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '10/2/2023'
INSERT INTO lists (list_date) -- VALUES ('10/2/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '3/3/2024'
INSERT INTO lists (list_date) -- VALUES ('3/3/2024') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '5/22/2023'
INSERT INTO lists (list_date) -- VALUES ('5/22/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '6/4/2023'
INSERT INTO lists (list_date) -- VALUES ('6/4/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '3/12/2024'
INSERT INTO lists (list_date) -- VALUES ('3/12/2024') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '1/26/2024'
INSERT INTO lists (list_date) -- VALUES ('1/26/2024') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '7/25/2023'
INSERT INTO lists (list_date) -- VALUES ('7/25/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '5/8/2023'
INSERT INTO lists (list_date) -- VALUES ('5/8/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '5/30/2023'
INSERT INTO lists (list_date) -- VALUES ('5/30/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '11/1/2023'
INSERT INTO lists (list_date) -- VALUES ('11/1/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '2/3/2024'
INSERT INTO lists (list_date) -- VALUES ('2/3/2024') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '1/12/2024'
INSERT INTO lists (list_date) -- VALUES ('1/12/2024') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '2/23/2024'
INSERT INTO lists (list_date) -- VALUES ('2/23/2024') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '6/19/2023'
INSERT INTO lists (list_date) -- VALUES ('6/19/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '3/15/2023'
INSERT INTO lists (list_date) -- VALUES ('3/15/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '10/17/2023'
INSERT INTO lists (list_date) -- VALUES ('10/17/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SET @list_date = '7/10/2023'
INSERT INTO lists (list_date) -- VALUES ('7/10/2023') -- none
SELECT @list_date WHERE NOT EXISTS (SELECT 1 FROM lists	WHERE list_date = @list_date)

SELECT * 
FROM lists
ORDER BY list_date 
