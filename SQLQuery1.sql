USE db_sql;
GO

-- ��������� ����� � ������� "������":
DELETE FROM Building
WHERE BuildingId = 2;

-- ��������� ����� � ������� "������������":
DELETE FROM Diseases
WHERE Name = '����';

-- ��������� ����� � ������� "˳���":
DELETE FROM Doctors
WHERE Surname = '������';

-- ��������� ����� � ������� "����������":
DELETE FROM Examinations
WHERE Name = '�������';

-- ��������� ����� � ������� "������":
DELETE FROM Wards
WHERE Name = '������ 101';
GO
