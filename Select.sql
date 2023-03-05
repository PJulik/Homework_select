SELECT album_name, year_of_issue FROM album
WHERE year_of_issue = 2018;

SELECT track_name, duration FROM track 
WHERE duration = (SELECT MAX(duration) FROM track);

SELECT track_name FROM track
WHERE duration >= 3.5*60;

SELECT compilation_name FROM compilation
WHERE year_of_issue >= 2018 AND year_of_issue <= 2020;

SELECT singer_name FROM singer
WHERE (LENGTH(singer_name) - LENGTH(REPLACE(singer_name, ' ', ''))) < 1;

SELECT track_name FROM track
WHERE lower(track_name) LIKE '%my%' OR lower(track_name) LIKE '%мой%';