USE db_sql;
GO

-- ��������� ����� � ������� "������":
UPDATE Building
SET Financing = 55000
WHERE BuildingId = 1;

-- ��������� ����� � ������� "������������":
UPDATE Diseases
SET Severity = 5
WHERE Name = '����';

-- ��������� ����� � ������� "˳���":
UPDATE Doctors
SET Premium = 400
WHERE Surname = '������';

-- ��������� ����� � ������� "����������":
UPDATE Examinations
SET DayOfWeek = 4
WHERE Name = '�������';

-- ��������� ����� � ������� "������":
UPDATE Wards
SET Floor = 2
WHERE Name = '������ 101';
GO

