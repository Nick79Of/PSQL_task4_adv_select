--1. ���������� ������������ � ������ �����;
SELECT g.name genre, COUNT(i.artist_id) count_artist FROM Genre g
LEFT JOIN Genre_Artist i ON g.id = i.genre_id
GROUP BY g.name;

--2. ���������� ������, �������� � ������� 2019-2020 �����;
SELECT COUNT(t.id) count_2019_2020 FROM Track t
RIGHT JOIN Album a ON t.album_id = a.id
WHERE year BETWEEN 2019 AND 2020;

--3. ������� ����������������� ������ �� ������� �������;
SELECT a.name album, AVG(t.duration) avg_duration FROM Track t
RIGHT JOIN Album a ON t.album_id = a.id
GROUP BY a.name;

--4. ��� �����������, ������� �� ��������� ������� � 2020 ����;
SELECT name FROM Artist 
WHERE name NOT IN (
	SELECT i.name FROM Artist i
	LEFT JOIN Artist_Album ia ON i.id = ia.artist_id
	LEFT JOIN Album a ON ia.album_id = a.id
	WHERE year = 2020
);

--5. �������� ���������, � ������� ������������ ���������� ����������� (�������� ����);
SELECT DISTINCT c.name collection_with_Scooter FROM Collection c 
JOIN Collection_Track ct ON c.id = ct.collection_id
JOIN Track t ON ct.track_id = t.id
JOIN Album a ON t.album_id = a.id
JOIN Artist_Album ia ON a.id = ia.album_id
JOIN Artist i ON ia.artist_id = i.id
WHERE i.name iLIKE '%%scooter%%';

--6. �������� ��������, � ������� ������������ ����������� ����� 1 �����;
SELECT DISTINCT a.name FROM Album a 
JOIN Artist_Album ia ON a.id = ia.album_id
WHERE ia.artist_id IN (
	SELECT artist_id FROM (
		SELECT gi.artist_id, COUNT(gi.genre_id) FROM Genre_Artist gi
		GROUP BY gi.artist_id
		HAVING COUNT(gi.genre_id)>1
		) Subtable1
);

--7. ������������ ������, ������� �� ������ � ��������;
SELECT name FROM Track t 
WHERE id NOT IN (SELECT DISTINCT track_id FROM Collection_Track);

--8. �����������(-��), ����������� ����� �������� �� ����������������� ���� (������������ ����� ������ ����� ���� ���������);
SELECT DISTINCT i.name FROM Artist i
JOIN Artist_Album ia ON i.id = ia.artist_id
WHERE album_id IN (
	SELECT album_id FROM Track
	WHERE duration = (SELECT MIN(duration) FROM Track)
);

--9. �������� ��������, ���������� ���������� ���������� ������.
DROP TABLE IF EXISTS Subtable1;

SELECT a.name, COUNT(t.id) amount INTO Subtable1 FROM Album a
JOIN Track t ON a.id = t.album_id
GROUP BY a.name; 

SELECT * FROM Subtable1
WHERE amount = (SELECT MIN(amount) FROM Subtable1);