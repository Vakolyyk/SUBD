CREATE
TRIGGER Delete_Клієнт ON [Продукція2] 
INSTEAD OF DELETE 
AS
BEGIN
DECLARE @Old INT
SELECT @Old = [Код_продукції] FROM deleted
UPDATE [Продукція2] SET Код_продукції=1 WHERE Код_продукції=@Old
END

DELETE FROM [Продукція2] WHERE [Код_продукції] = 2 ;
SELECT * FROM [Продукція2];

CREATE
TRIGGER Місто
ON Працівники
INSTEAD OF INSERT
AS
BEGIN
DECLARE @NEW varchar
SELECT @NEW = Місто FROM inserted
SET @NEW =dbo.FN_ENCRIPTIONS(@NEW)
END


ALTER TABLE [Продукція1]
ADD Дата_виготовлення DATE NULL;

CREATE TRIGGER 
Пр1 ON [Продажі] AFTER INSERT
AS
BEGIN
UPDATE [Продукція1] SET [Продукція1].Дата_виготовлення=CONVERT(date, inserted.[Дата_продажу])
FROM inserted
WHERE [Продукція1].[Код_продукції] = inserted.[Код_продукції]
END

INSERT INTO [Продукція1] 
VALUES
(5, 'КуркаСир', 'Хлібобулочні', 3, 1, 15,22,250,1, NULL);