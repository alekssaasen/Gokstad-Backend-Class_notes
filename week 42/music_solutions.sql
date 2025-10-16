use MusicDB;

# All artists with albums that have had streaming adaptation since 2010
SELECT
    Artists.FirstName,
    Artists.LastName,
    Albums.Title,
    Media.MediaType,
    Media.ReleaseYear
FROM Artists
JOIN MusicDB.Albums on Artists.ArtistID = Albums.ArtistID
JOIN Media ON Albums.AlbumID = Media.AlbumID
WHERE MediaType = 'Streaming'
AND Media.ReleaseYear >= 2010;