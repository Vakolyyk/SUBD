SELECT * INTO [���������1] FROM [dbo].[���������]
WHERE ���_��������� = '����������' ;

SELECT * INTO [���������2] FROM [dbo].[���������]
WHERE ���_��������� != '����������' ;

SELECT * FROM [���������1]
UNION
SELECT * FROM [���������2]

SELECT * FROM [���������1]
WHERE [���_���������] IN (SELECT [���_���������] FROM [���������2]);

SELECT * FROM ���������1 
WHERE ���_��������� NOT IN (SELECT ���_��������� FROM ���������2);

SELECT * FROM ���������1,���������2;
