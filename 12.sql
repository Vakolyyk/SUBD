CREATE
TRIGGER Delete_�볺�� ON [���������2] 
INSTEAD OF DELETE 
AS
BEGIN
DECLARE @Old INT
SELECT @Old = [���_���������] FROM deleted
UPDATE [���������2] SET ���_���������=1 WHERE ���_���������=@Old
END

DELETE FROM [���������2] WHERE [���_���������] = 2 ;
SELECT * FROM [���������2];

CREATE
TRIGGER ̳���
ON ����������
INSTEAD OF INSERT
AS
BEGIN
DECLARE @NEW varchar
SELECT @NEW = ̳��� FROM inserted
SET @NEW =dbo.FN_ENCRIPTIONS(@NEW)
END


ALTER TABLE [���������1]
ADD ����_������������ DATE NULL;

CREATE TRIGGER 
��1 ON [������] AFTER INSERT
AS
BEGIN
UPDATE [���������1] SET [���������1].����_������������=CONVERT(date, inserted.[����_�������])
FROM inserted
WHERE [���������1].[���_���������] = inserted.[���_���������]
END

INSERT INTO [���������1] 
VALUES
(5, '��������', '����������', 3, 1, 15,22,250,1, NULL);