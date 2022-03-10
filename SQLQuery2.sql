SELECT * FROM Album;
SELECT * FROM Artist;
SELECT * FROM Song;
SELECT * FROM Genre;

--1. Query all of the entries in the Genre table
SELECT
    Name
FROM Genre;

--2. Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
SELECT
	ArtistName
FROM Artist
ORDER BY ArtistName

--3. Write a SELECT query that lists all the songs in the Song table and include the Artist name
SELECT
    title, artistname
FROM 
    song
    inner join artist
    ON song.artistid = artist.id

--4. Write a SELECT query that lists all the Artists that have a Soul Album
SELECT DISTINCT
	ArtistName
FROM Artist
	INNER JOIN Album
	ON Artist.Id = Album.ArtistId
WHERE Album.GenreId = 1

--5. Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
SELECT DISTINCT
	ArtistName
FROM Artist
	INNER JOIN Album
	ON Artist.Id = Album.ArtistId
WHERE Album.GenreId = 2 OR Album.GenreId = 4

--6. Write a SELECT statement that lists the Albums with no songs
SELECT Album.Title AS AlbumTitle, Song.Title
FROM Album LEFT JOIN SONG ON Album.Id = Song.AlbumId
WHERE Song.Title IS NULL

--7. Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist (ArtistName, YearEstablished)
VALUES ('Suicidal Tendencies', 1980)

--8. Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ('adfasdf', 'zxzxczxcz', 234, 'asdasda', 28, 9)

--9. Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ('kjhkhkjh', 89, 1981, 8, 28, 1 )

--10. Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
Select *
FROM Artist a 
join Album al on a.id = al.ArtistId 
join Songs s on a.Id = s.ArtistId
Where a.Id = 28