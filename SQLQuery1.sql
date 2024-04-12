USE db_sql;
GO

INSERT INTO Building (BuildingId, Financing, Floor, Name) 
VALUES 
    (1, 50000, 1, '������ 1'),
    (2, 60000, 2, '������ 2'),
    (3, 70000, 3, '������ 3');
GO

-- ������� ����� � ������� "������������":
INSERT INTO Diseases (Name, Severity) 
VALUES 
    ('����', 3),
    ('�����', 2),
    ('�������', 4);
GO

-- ������� ����� � ������� "˳���":
INSERT INTO Doctors (Name, Phone, Premium, Salary, Surname) 
VALUES 
    ('����', '1234567890', 200, 1200, '������'),
    ('����', '0987654321', 300, 1300, '�������'),
    ('���������', '9876543210', 250, 1100, '�������');
GO

-- ������� ����� � ������� "����������":
INSERT INTO Examinations (DayOfWeek, EndTime, Name, StartTime) 
VALUES 
    (1, '15:00', '������� ����', '12:00'),
    (2, '14:30', '�������', '10:00'),
    (3, '16:00', '���', '14:00');
GO

-- ������� ����� � ������� "������":
INSERT INTO Wards (Building, Floor, Name) 
VALUES 
    (1, 1, '������ 101'),
    (2, 2, '������ 202'),
    (3, 3, '������ 303');
GO
