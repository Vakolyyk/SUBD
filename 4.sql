Insert into [dbo].[�������] values (3, 'ѳ�����', '�������','�����������', 22, 0324325552, 'sadadad@gmail.com');

Insert into [dbo].[�������] values (4, '�������','�����������','��������',44,323142425,'dfkwejifoj@gmail.com'),
								   (5, '�� � ����','�����','������',33,123142424,'kfonsdiog@gmail.com');

BULK INSERT [dbo].[�������]
  FROM 'D:\����\5 �������\����\addfilebakery.txt'
  WITH (
  FIELDTERMINATOR = ';',
  ROWTERMINATOR = '\n')

BULK INSERT [dbo].[�볺���]
  FROM 'D:\����\5 �������\����\addfileclient.txt'
  WITH (
  FIELDTERMINATOR = ';',
  ROWTERMINATOR = '\n')

UPDATE ������� SET ̳��� = 'г���' WHERE �����_������ = 'Bakery';
UPDATE ������� SET ������ = '������'  WHERE �����_������ = 'Bakery';

Delete from ������� where [E-mail] is NULL;