# all artist with albums that have had streaming adaptation since 2010
SELECT concat(Artists.FirstName, ' ', Artists.LastName) AS 'Artist', Albums.Title, Media.MediaType, Media.ReleaseYear FROM Artists
JOIN Albums ON Artists.ArtistID = Albums.ArtistID
JOIN Media ON Albums.AlbumID = Media.AlbumID
WHERE MediaType = 'streaming'
AND Media.ReleaseYear > 2010;

# for each artist list the total number of albums, then count the number of cd media, sort by total streaming
SELECT CONCAT(Artists.FirstName, ' ', Artists.LastName) AS 'Artist',
       COUNT(Albums.AlbumID) AS 'Albums',
       COUNT(MediaType) AS 'Adaptations'
FROM Artists
JOIN Albums ON Artists.ArtistID = Albums.ArtistID
JOIN Media ON Albums.AlbumID = Media.AlbumID
WHERE MediaType = 'streaming'
GROUP BY Artists.FirstName, Artists.LastName
ORDER BY Albums DESC, Adaptations DESC, Artists.LastName ASC;


# find all albums with 'I' in their title and the media is both CD and vinyl
SELECT Albums.Title FROM Albums
WHERE Title LIKE '%I%'
AND AlbumID IN (
    SELECT AlbumID
    FROM Media
    WHERE Media.MediaType = 'CD')
AND AlbumID IN (
    SELECT AlbumID
    FROM Media
    WHERE Media.MediaType = 'VINYL');

# write an insert for an album and then add to media releases
# VERSION 1 - Sets ID before any insert
SET @newAlbumID = 61;
INSERT INTO Albums
VALUES (@newAlbumID, 'New Album', 3, 3, 2025, 'new UPC goes here');

INSERT INTO Media (AlbumID, MediaType, ReleaseYear)
VALUES (@newAlbumID, 'Vinyl',2025);

INSERT INTO Media (AlbumID, MediaType, ReleaseYear)
VALUES (@newAlbumID, 'CD',2025);

# VERSION 2 (better) - gets ID after first insert
INSERT INTO Albums (Title, ArtistID, LabelID, ReleaseYear, UPC)
VALUES ('New Album', 3, 3, 2025, 'new UPC goes here');
SET @newAlbumID = LAST_INSERT_ID();

INSERT INTO Media (AlbumID, MediaType, ReleaseYear)
VALUES (@newAlbumID, 'Vinyl',2025);

INSERT INTO Media (AlbumID, MediaType, ReleaseYear)
VALUES (@newAlbumID, 'CD',2025);

# Find the difference in years between the first Freddie mecury vinyl and the newest billie elilish cd
# three queries, using variables
SET @oldestMecuryVinyl = (SELECT ReleaseYear FROM Media
WHERE MediaType = 'Vinyl'
AND AlbumID IN (SELECT AlbumID FROM Albums WHERE ArtistID =
                                            (   SELECT ArtistID
                                                FROM Artists
                                                WHERE concat(Artists.FirstName, ' ', Artists.LastName) = 'Freddie Mercury'))
ORDER BY ReleaseYear ASC
LIMIT 1);

SET @newEilishCd =  (SELECT ReleaseYear FROM Media
WHERE MediaType = 'CD'
AND AlbumID IN (SELECT AlbumID FROM Albums WHERE ArtistID =
                                            (   SELECT ArtistID
                                                FROM Artists
                                                WHERE concat(Artists.FirstName, ' ', Artists.LastName) = 'Billie Eilish'))
ORDER BY ReleaseYear DESC
LIMIT 1);

SELECT @newEilishCd - @oldestMecuryVinyl AS 'Difference in years';



# other attempt (single query, no variables
# Find the difference in years between the first Freddie mecury vinyl and the newest billie elilish cd
SELECT (SELECT ReleaseYear FROM Media
WHERE MediaType = 'CD'
AND AlbumID IN (SELECT AlbumID FROM Albums WHERE ArtistID =
                                            (   SELECT ArtistID
                                                FROM Artists
                                                WHERE concat(Artists.FirstName, ' ', Artists.LastName) = 'Billie Eilish'))
ORDER BY ReleaseYear DESC
LIMIT 1) - (SELECT ReleaseYear FROM Media
WHERE MediaType = 'Vinyl'
AND AlbumID IN (SELECT AlbumID FROM Albums WHERE ArtistID =
                                            (   SELECT ArtistID
                                                FROM Artists
                                                WHERE concat(Artists.FirstName, ' ', Artists.LastName) = 'Freddie Mercury'))
ORDER BY ReleaseYear ASC
LIMIT 1)
 AS 'Difference in years';

