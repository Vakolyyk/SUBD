Insert into [dbo].[Пекарня] values (3, 'Сімейна', 'Радехів','Незалежності', 22, 0324325552, 'sadadad@gmail.com');

Insert into [dbo].[Пекарня] values (4, 'Народна','Червоноград','Шевченка',44,323142425,'dfkwejifoj@gmail.com'),
								   (5, 'Як у дома','Стрий','Франка',33,123142424,'kfonsdiog@gmail.com');

BULK INSERT [dbo].[Пекарня]
  FROM 'D:\Лаби\5 семестр\СУБД\addfilebakery.txt'
  WITH (
  FIELDTERMINATOR = ';',
  ROWTERMINATOR = '\n')

BULK INSERT [dbo].[Клієнти]
  FROM 'D:\Лаби\5 семестр\СУБД\addfileclient.txt'
  WITH (
  FIELDTERMINATOR = ';',
  ROWTERMINATOR = '\n')

UPDATE Пекарня SET Місто = 'Рівне' WHERE Назва_пекарні = 'Bakery';
UPDATE Пекарня SET Вулиця = 'Золота'  WHERE Назва_пекарні = 'Bakery';

Delete from Пекарня where [E-mail] is NULL;