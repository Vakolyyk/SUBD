CREATE FUNCTION FN_ENCRIPTIONS(@str varchar(250))
RETURNS varbinary(500)
AS
BEGIN 
DECLARE @encript varbinary(500)
SET @encript = ENCRYPTBYPASSPHRASE('KEY',@str)
RETURN (@encript)
END
GO

CREATE FUNCTION FN_DECRIPTIONS(@encryp varbinary(500))
RETURNS varchar(250)
AS
BEGIN
DECLARE @decript varbinary(500)
SET @decript = DECRYPTBYPASSPHRASE('KEY',@encryp)
RETURN (@decript)
END
GO


CREATE PROCEDURE CountDate @name varchar(20), @date1 date, @date2 date AS
BEGIN
DECLARE @error VARCHAR(20)
SET @error = 'Некоректно задані дати';
IF (@date1<=@date2) 
BEGIN
CREATE TABLE Дати (Назва_продукції CHAR(20),кількість INT);
INSERT INTO Дати SELECT [Назва_продукції] ,
COUNT(Клієнти.[Код_клієнта]) AS кількість
FROM (Клієнти INNER JOIN [Продажі]
ON Клієнти.[Код_клієнта]=[Продажі].[Код_продажу]
INNER JOIN [Продукція]
ON [Продукція].[Код_продукції] = [Продажі].[Код_продажу])
WHERE [Продажі].[Дата_продажу] BETWEEN @date1 AND @date2
GROUP BY [Назва_продукції];
END;
ELSE SELECT @error;
END

SELECT Прізвище, [Ім'я], [dbo].[FN_ENCRIPTIONS](Номер_телефону) AS Шифр
FROM Працівники

EXEC CountDates 'Хліб', '2020-01-01', '2020-12-12';
select * from Дати