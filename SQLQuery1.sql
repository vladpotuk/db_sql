USE db_sql;
GO

-- Видалення даних з таблиці "Корпус":
DELETE FROM Building
WHERE BuildingId = 2;

-- Видалення даних з таблиці "Захворювання":
DELETE FROM Diseases
WHERE Name = 'Грип';

-- Видалення даних з таблиці "Лікарі":
DELETE FROM Doctors
WHERE Surname = 'Петров';

-- Видалення даних з таблиці "Обстеження":
DELETE FROM Examinations
WHERE Name = 'Рентген';

-- Видалення даних з таблиці "Палати":
DELETE FROM Wards
WHERE Name = 'Палата 101';
GO
