USE db_sql;
GO

-- Оновлення даних в таблиці "Корпус":
UPDATE Building
SET Financing = 55000
WHERE BuildingId = 1;

-- Оновлення даних в таблиці "Захворювання":
UPDATE Diseases
SET Severity = 5
WHERE Name = 'Грип';

-- Оновлення даних в таблиці "Лікарі":
UPDATE Doctors
SET Premium = 400
WHERE Surname = 'Петров';

-- Оновлення даних в таблиці "Обстеження":
UPDATE Examinations
SET DayOfWeek = 4
WHERE Name = 'Рентген';

-- Оновлення даних в таблиці "Палати":
UPDATE Wards
SET Floor = 2
WHERE Name = 'Палата 101';
GO

