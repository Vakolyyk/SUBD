EXEC sp_helpindex '������'

EXEC sp_helpindex '���������'

CREATE INDEX index2 ON ������ (���_�������, ���_���������); 

CREATE INDEX index1 ON ��������� (���_���������, ���_�������); 

SET SHOWPLAN_ALL ON;  
go
select [���������].[�����_���������], [�볺���].[�������],[�볺���].[��'�] 
from [���������] inner join [�볺���]
on [���������].[���_���������]=[�볺���].[���_�볺���]
WHERE [�����_���������] = '�����';
go
SET SHOWPLAN_ALL OFF;  
go
