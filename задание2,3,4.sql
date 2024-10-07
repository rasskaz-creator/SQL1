задание 2

SELECT name, duration
FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

SELECT name
FROM tracks
WHERE duration > 3.5;

SELECT name
FROM compilation
WHERE year BETWEEN 2018 AND 2020;

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT name
FROM tracks
WHERE LOWER(name) LIKE '% my %' 
   OR LOWER(name) LIKE 'my %'   
   OR LOWER(name) LIKE '% my';


задание 3

SELECT g.name AS genre, COUNT(a.artist_id) AS artist_count
FROM Artist a
JOIN Artist_genre ag ON a.artist_id = ag.artist_id
JOIN Genre g ON ag.genre_id = g.genre_id
GROUP BY g.name;


SELECT COUNT(t.track_id) AS track_count
FROM Tracks t
JOIN Albums a ON t.album_id = a.album_id
WHERE a.year BETWEEN 2019 AND 2020;

SELECT a.name AS album_name, AVG(t.duration) AS avg_duration
FROM Albums a
JOIN Tracks t ON a.album_id = t.album_id
GROUP BY a.name;

SELECT a.name
FROM Artist a
WHERE a.artist_id NOT IN (
    SELECT aa.artist_id
    FROM Artist_album aa
    JOIN Albums al ON aa.album_id = al.album_id
    WHERE al.year = 2020
);

SELECT DISTINCT c.name
FROM Compilation c
JOIN Compilation_track ct ON c.compilation_id = ct.compilation_id
JOIN Tracks t ON ct.track_id = t.track_id
JOIN Artist_album aa ON t.album_id = aa.album_id
JOIN Artist ar ON aa.artist_id = ar.artist_id
WHERE ar.name = 'Queen';


задание 4

SELECT a.name AS album_name
FROM Albums a
JOIN Artist_album aa ON a.album_id = aa.album_id
JOIN Artist_genre ag ON aa.artist_id = ag.artist_id
GROUP BY a.album_id, a.name
HAVING COUNT(DISTINCT ag.genre_id) > 1;

SELECT t.name AS track_name
FROM Tracks t
LEFT JOIN Compilation_track ct ON t.track_id = ct.track_id
WHERE ct.track_id IS NULL;

SELECT ar.name AS artist_name
FROM Tracks t
JOIN Artist_album aa ON t.album_id = aa.album_id
JOIN Artist ar ON aa.artist_id = ar.artist_id
WHERE t.duration = (
    SELECT MIN(duration)
    FROM Tracks
)
GROUP BY ar.artist_id, ar.name;

SELECT a.name AS album_name
FROM Albums a
JOIN Tracks t ON a.album_id = t.album_id
GROUP BY a.album_id, a.name
HAVING COUNT(t.track_id) = (
    SELECT MIN(track_count)
    FROM (
        SELECT COUNT(track_id) AS track_count
        FROM Tracks
        GROUP BY album_id
    ) AS track_counts
);





