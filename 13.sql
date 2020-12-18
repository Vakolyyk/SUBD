EXEC sp_helpindex 'Продажі'

EXEC sp_helpindex 'Продукція'

CREATE INDEX index2 ON Продажі (Код_продажу, Код_продукції); 

CREATE INDEX index1 ON Продукція (Код_продукції, Код_рецепту); 

SET SHOWPLAN_ALL ON;  
go
select [Продукція].[Назва_продукції], [Клієнти].[Прізвище],[Клієнти].[Ім'я] 
from [Продукція] inner join [Клієнти]
on [Продукція].[Код_продукції]=[Клієнти].[Код_клієнта]
WHERE [Назва_продукції] = 'Багет';
go
SET SHOWPLAN_ALL OFF;  
go
