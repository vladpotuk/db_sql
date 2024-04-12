USE db_sql;
-- SELECT Query:
-- 1. ������� ���� ������� �����.

SELECT * FROM Wards;

-- 2. ������� ������� �� �������� ��� �����.
SELECT Surname, Phone FROM Doctors;

-- 3. ������� �� ������� ��� ���������, �� ���� ����������� ������.
SELECT DISTINCT Floor FROM Wards;

-- 4. ������� ����� ����������� �� ���� �Name of Disease� �� ������ ����� ������� �� ���� �Severity of Disease�.
SELECT Name, Severity FROM Diseases;

-- 5. ��������������� ����� FROM ��� ����-���� ����� ������� ���� �����, �������������� ��� ��� ���������.
SELECT * 
FROM Departments AS D, Doctors AS Dr, Wards AS W;

-- 6. ������� ����� �������, ������������ � ������ 5 �� �� ����� ���� ������������ ����� 30000.
SELECT Name 
FROM Departments 
WHERE Building = 5 AND Financing < 30000;

-- 7. ������� ����� �������, ������������ � 3-�� ������ � ������ ������������ � ������� �� 12000 �� 15000.
SELECT Name 
FROM Departments 
WHERE Building = 3 AND Financing BETWEEN 12000 AND 15000;

-- 8. ������� ����� �����, ������������ � �������� 4 �� 5 �� 1-�� ������.
SELECT Name 
FROM Wards 
WHERE Building IN (4, 5) AND Floor = 1;

-- 9. ������� �����, ������� �� ����� ������������ �������, ������������ � �������� 3 ��� 6 �� �� ����� ���� ������������ ����� 11000 ��� ����� 25000.
SELECT Name, Building, Financing 
FROM Departments 
WHERE Building IN (3, 6) AND (Financing < 11000 OR Financing > 25000);

-- 10. ������� ������� �����, ��� �������� (���� ������ �� ��������) �������� 1500.
SELECT Surname 
FROM Doctors 
WHERE Salary + Premium > 1500;

-- 11. ������� ������� �����, � ���� �������� �������� �������� ��������� ��������.
SELECT Surname 
FROM Doctors 
WHERE Salary / 2 > Premium * 3;

-- 12. ������� ����� ��������� ��� ���������, �� ����������� � ����� ��� �� ����� � 12:00 �� 15:00.
SELECT DISTINCT Name 
FROM Examinations 
WHERE DayOfWeek IN (1, 2, 3) AND StartTime BETWEEN '12:00:00' AND '15:00:00';

-- 13. ������� ����� �� ������ ������� �������, ������������ � �������� 1, 3, 8 ��� 10.
SELECT D.Name, D.Building 
FROM Departments AS D 
WHERE D.Building IN (1, 3, 8, 10);

-- 14. ������� ����� ����������� ��� ������� �������, ��� 1-�� �� 2-��.
SELECT Name 
FROM Diseases 
WHERE Severity NOT IN (1, 2);

-- 15. ������� ����� �������, �� �� �������������� � 1-�� �� 3-�� ������.
SELECT Name 
FROM Departments 
WHERE Building NOT IN (1, 3);

-- 16. ������� ����� �������, �� �������������� � 1-�� ��� 3-�� ������.
SELECT Name 
FROM Departments 
WHERE Building IN (1, 3);

-- 17. ������� ������� �����, �� ����������� �� ����� �N�.
SELECT Surname 
FROM Doctors 
WHERE Surname LIKE 'N%';
