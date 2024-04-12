USE db_sql;
GO

INSERT INTO Building (BuildingId, Financing, Floor, Name) 
VALUES 
    (1, 50000, 1, 'Корпус 1'),
    (2, 60000, 2, 'Корпус 2'),
    (3, 70000, 3, 'Корпус 3');
GO

-- Вставка даних в таблицю "Захворювання":
INSERT INTO Diseases (Name, Severity) 
VALUES 
    ('Грип', 3),
    ('Ангіна', 2),
    ('Гепатит', 4);
GO

-- Вставка даних в таблицю "Лікарі":
INSERT INTO Doctors (Name, Phone, Premium, Salary, Surname) 
VALUES 
    ('Іван', '1234567890', 200, 1200, 'Петров'),
    ('Марія', '0987654321', 300, 1300, 'Іванова'),
    ('Олександр', '9876543210', 250, 1100, 'Сидоров');
GO

-- Вставка даних в таблицю "Обстеження":
INSERT INTO Examinations (DayOfWeek, EndTime, Name, StartTime) 
VALUES 
    (1, '15:00', 'Провірка крові', '12:00'),
    (2, '14:30', 'Рентген', '10:00'),
    (3, '16:00', 'УЗД', '14:00');
GO

-- Вставка даних в таблицю "Палати":
INSERT INTO Wards (Building, Floor, Name) 
VALUES 
    (1, 1, 'Палата 101'),
    (2, 2, 'Палата 202'),
    (3, 3, 'Палата 303');
GO
