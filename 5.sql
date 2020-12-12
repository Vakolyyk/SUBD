SELECT * INTO [Продукція1] FROM [dbo].[Продукція]
WHERE Тип_продукції = 'Хлібобулочні' ;

SELECT * INTO [Продукція2] FROM [dbo].[Продукція]
WHERE Тип_продукції != 'Хлібобулочні' ;

SELECT * FROM [Продукція1]
UNION
SELECT * FROM [Продукція2]

SELECT * FROM [Продукція1]
WHERE [Код_продукції] IN (SELECT [Код_продукції] FROM [Продукція2]);

SELECT * FROM Продукція1 
WHERE Код_продукції NOT IN (SELECT Код_продукції FROM Продукція2);

SELECT * FROM Продукція1,Продукція2;
