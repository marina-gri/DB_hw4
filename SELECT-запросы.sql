-- Задание 2.1. Название и продолжительность самого длительного трека.
SELECT title, duration FROM tracks
  WHERE duration = (
    SELECT MAX(duration)
    FROM tracks);
   
-- Задание 2.2. Название треков, продолжительность которых не менее 3,5 минут.   
SELECT title FROM tracks
  WHERE duration >= 210;

-- Задание 2.3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
-- Сделала выборку с 2015 по 2018. 
SELECT title FROM collections
  WHERE year_of_release BETWEEN 2015 AND 2018;
 
-- Задание 2.4. Исполнители, чьё имя состоит из одного слова. 
SELECT musician_name FROM musicians 
  WHERE musician_name NOT LIKE '% %';

-- Задание 2.5. Название треков, которые содержат слово «мой» или «my». 
SELECT title FROM tracks 
  WHERE LOWER(title) LIKE '% my %'
   OR LOWER(title) LIKE 'my %'
   OR LOWER(title) LIKE '% my'
   OR LOWER(title) LIKE 'my'
   OR LOWER(title) LIKE '% мой %'
   OR LOWER(title) LIKE 'мой %'
   OR LOWER(title) LIKE '% мой'
   OR LOWER(title) LIKE 'мой';

-- Задание 3.1. Количество исполнителей в каждом жанре.
SELECT 
g.genre_name, 
(SELECT  COUNT(mg.musician_id) FROM musicians_genres mg WHERE mg.genre_id=g.genre_id) AS number_of_musicians 
FROM genres g;

-- Задание 3.2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT a.title, count(t.track_id) AS number_of_tracks
FROM tracks t JOIN albums a ON t.album_id = a.album_id
WHERE a.year_of_release BETWEEN 2019 AND 2020
GROUP BY a.title;

-- Задание 3.3. Средняя продолжительность треков по каждому альбому.
SELECT 
a.title, 
(SELECT  ROUND(AVG(t.duration),1) FROM tracks t WHERE t.album_id=a.album_id) AS avg_duration 
FROM albums a;

-- Задание 3.4. Все исполнители, которые не выпустили альбомы в 2020 году.
--Выполнила двумя способами. Год выпуска поменяла на 2003
SELECT m.musician_name, a.year_of_release  
FROM musicians m
  INNER JOIN albums a
    ON a.year_of_release <> 2003
  INNER JOIN albums_musicians am 
    ON am.album_id  = a.album_id AND am.musician_id = m.musician_id; 
   
SELECT m.musician_name, a.year_of_release
FROM musicians m, albums a, albums_musicians am
WHERE a.year_of_release <> 2003 AND am.album_id  = a.album_id AND am.musician_id = m.musician_id;


-- Задание 3.5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.title 
FROM collections c 
JOIN track_lists tl ON c.collection_id = tl.collection_id 
JOIN tracks t ON t.track_id = tl.track_id 
JOIN albums a ON a.album_id = t.album_id 
JOIN albums_musicians am ON a.album_id = am.album_id 
JOIN musicians m ON am.musician_id = m.musician_id 
WHERE m.musician_name = 'David Bowie';


-- Дополнительные задания
-- Задание 4.1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.title FROM albums a 
JOIN albums_musicians am ON a.album_id = am.album_id
JOIN musicians m ON am.musician_id = m.musician_id  
JOIN musicians_genres mg ON m.musician_id = mg.musician_id 
GROUP BY a.title 
HAVING COUNT(mg.musician_id) > 1; 


-- Задание 4.2. Наименования треков, которые не входят в сборники.
SELECT t.title
FROM tracks t
WHERE t.track_id NOT IN (SELECT tl.track_id FROM track_lists tl)
ORDER BY t.title  


-- Задание 4.3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, 
-- теоретически таких треков может быть несколько.
SELECT m.musician_name 
FROM musicians m 
JOIN albums_musicians am ON m.musician_id = am.musician_id 
JOIN albums a ON am.album_id = a.album_id 
JOIN tracks t ON a.album_id = t.album_id 
WHERE t.duration = (SELECT min(t.duration) FROM tracks t);

