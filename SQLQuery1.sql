USE db_sql;
-- SELECT Query:
-- 1. Вивести вміст таблиці палат.

SELECT * FROM Wards;

-- 2. Вивести прізвища та телефони всіх лікарів.
SELECT Surname, Phone FROM Doctors;

-- 3. Вивести всі поверхи без повторень, на яких розміщуються палати.
SELECT DISTINCT Floor FROM Wards;

-- 4. Вивести назви захворювань під ім’ям “Name of Disease” та ступінь їхньої тяжкості під ім’ям “Severity of Disease”.
SELECT Name, Severity FROM Diseases;

-- 5. Використовувати вираз FROM для будь-яких трьох таблиць бази даних, використовуючи для них псевдоніми.
SELECT * 
FROM Departments AS D, Doctors AS Dr, Wards AS W;

-- 6. Вивести назви відділень, розташованих у корпусі 5 та які мають фонд фінансування менше 30000.
SELECT Name 
FROM Departments 
WHERE Building = 5 AND Financing < 30000;

-- 7. Вивести назви відділень, розташованих у 3-му корпусі з фондом фінансування у діапазоні від 12000 до 15000.
SELECT Name 
FROM Departments 
WHERE Building = 3 AND Financing BETWEEN 12000 AND 15000;

-- 8. Вивести назви палат, розташованих у корпусах 4 та 5 на 1-му поверсі.
SELECT Name 
FROM Wards 
WHERE Building IN (4, 5) AND Floor = 1;

-- 9. Вивести назви, корпуси та фонди фінансування відділень, розташованих у корпусах 3 або 6 та які мають фонд фінансування менше 11000 або більше 25000.
SELECT Name, Building, Financing 
FROM Departments 
WHERE Building IN (3, 6) AND (Financing < 11000 OR Financing > 25000);

-- 10. Вивести прізвища лікарів, чия зарплата (сума ставки та надбавки) перевищує 1500.
SELECT Surname 
FROM Doctors 
WHERE Salary + Premium > 1500;

-- 11. Вивести прізвища лікарів, у яких половина зарплати перевищує триразову надбавку.
SELECT Surname 
FROM Doctors 
WHERE Salary / 2 > Premium * 3;

-- 12. Вивести назви обстежень без повторень, які проводяться у перші три дні тижня з 12:00 до 15:00.
SELECT DISTINCT Name 
FROM Examinations 
WHERE DayOfWeek IN (1, 2, 3) AND StartTime BETWEEN '12:00:00' AND '15:00:00';

-- 13. Вивести назви та номери корпусів відділень, розташованих у корпусах 1, 3, 8 або 10.
SELECT D.Name, D.Building 
FROM Departments AS D 
WHERE D.Building IN (1, 3, 8, 10);

-- 14. Вивести назви захворювань всіх ступенів тяжкості, крім 1-го та 2-го.
SELECT Name 
FROM Diseases 
WHERE Severity NOT IN (1, 2);

-- 15. Вивести назви відділень, які не розташовуються в 1-му чи 3-му корпусі.
SELECT Name 
FROM Departments 
WHERE Building NOT IN (1, 3);

-- 16. Вивести назви відділень, що розташовуються в 1-му або 3-му корпусі.
SELECT Name 
FROM Departments 
WHERE Building IN (1, 3);

-- 17. Вивести прізвища лікарів, що починаються на літеру «N».
SELECT Surname 
FROM Doctors 
WHERE Surname LIKE 'N%';
