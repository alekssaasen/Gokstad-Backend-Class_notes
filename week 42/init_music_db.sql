DROP DATABASE IF EXISTS MusicDB;
CREATE DATABASE MusicDB;
USE MusicDB;

-- Artists table (analogous to Authors)
CREATE TABLE Artists (
    ArtistID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthYear INT,
    Country VARCHAR(50)
);

-- Labels table (analogous to Publishers)
CREATE TABLE Labels (
    LabelID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50)
);

-- Albums table (analogous to Books)
CREATE TABLE Albums (
    AlbumID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(200),
    ArtistID INT,
    LabelID INT,
    ReleaseYear INT,
    UPC VARCHAR(20),
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
    FOREIGN KEY (LabelID) REFERENCES Labels(LabelID)
);

-- Genres table (same as LibraryDB)
CREATE TABLE Genres (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    GenreName VARCHAR(50)
);

-- Many-to-many relationship between Albums & Genres (analogous to BookGenres)
CREATE TABLE AlbumGenres (
    AlbumID INT,
    GenreID INT,
    PRIMARY KEY (AlbumID, GenreID),
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

-- Media table (analogous to Media, for digital, CD, vinyl, etc.)
CREATE TABLE Media (
    MediaID INT AUTO_INCREMENT PRIMARY KEY,
    AlbumID INT,
    MediaType VARCHAR(50), -- e.g., CD, Vinyl, Streaming
    ReleaseYear INT,
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);

-- Insert sample data
INSERT INTO Artists (FirstName, LastName, BirthYear, Country) VALUES
('Freddie', 'Mercury', 1946, 'United Kingdom'),
('Elvis', 'Presley', 1935, 'United States'),
('Michael', 'Jackson', 1958, 'United States'),
('David', 'Bowie', 1947, 'United Kingdom'),
('Stevie', 'Wonder', 1950, 'United States'),
('Madonna', 'Ciccone', 1958, 'United States'),
('Paul', 'McCartney', 1942, 'United Kingdom'),
('Whitney', 'Houston', 1963, 'United States'),
('Bob', 'Marley', 1945, 'Jamaica'),
('Kurt', 'Cobain', 1967, 'United States'),
('Adele', 'Adkins', 1988, 'United Kingdom'),
('Beyoncé', 'Knowles', 1981, 'United States'),
('Prince', 'Nelson', 1958, 'United States'),
('John', 'Lennon', 1940, 'United Kingdom'),
('Elton', 'John', 1947, 'United Kingdom'),
('Bruno', 'Mars', 1985, 'United States'),
('Billie', 'Eilish', 2001, 'United States'),
('Ed', 'Sheeran', 1991, 'United Kingdom'),
('Amy', 'Winehouse', 1983, 'United Kingdom'),
('Eminem', 'Mathers', 1972, 'United States');

INSERT INTO Labels (Name, Country) VALUES
('EMI Records', 'United Kingdom'),
('Sony Music', 'United States'),
('Universal Music', 'United States'),
('Warner Bros. Records', 'United States'),
('Columbia Records', 'United States'),
('Island Records', 'United Kingdom'),
('Atlantic Records', 'United States'),
('Virgin Records', 'United Kingdom'),
('Motown', 'United States'),
('RCA Records', 'United States'),
('Republic Records', 'United States'),
('Capitol Records', 'United States'),
('Polydor', 'United Kingdom'),
('Def Jam', 'United States'),
('XL Recordings', 'United Kingdom'),
('Epic Records', 'United States'),
('Roc Nation', 'United States'),
('Tuff Gong', 'Jamaica'),
('Aftermath Entertainment', 'United States'),
('Interscope Records', 'United States');

INSERT INTO Genres (GenreName) VALUES
('Rock'),
('Pop'),
('Soul'),
('R&B'),
('Reggae'),
('Hip Hop'),
('Funk'),
('Disco'),
('Jazz'),
('Electronic'),
('Alternative'),
('Blues'),
('Country'),
('Dance'),
('Punk'),
('Indie'),
('Classical'),
('Metal'),
('Folk'),
('Gospel');

INSERT INTO Albums (Title, ArtistID, LabelID, ReleaseYear, UPC) VALUES
('A Night at the Opera', 1, 1, 1975, '602547567890'),
('Elvis Presley', 2, 5, 1956, '887654321012'),
('Thriller', 3, 2, 1982, '074643811229'),
('The Rise and Fall of Ziggy Stardust', 4, 4, 1972, '0825646287375'),
('Songs in the Key of Life', 5, 9, 1976, '602537493928'),
('Like a Virgin', 6, 8, 1984, '075992512617'),
('Band on the Run', 7, 1, 1973, '077774601029'),
('Whitney', 8, 10, 1987, '078635690121'),
('Exodus', 9, 18, 1977, '602547378901'),
('Nevermind', 10, 7, 1991, '720642442515'),
('21', 11, 15, 2011, '634904057912'),
('Lemonade', 12, 17, 2016, '888751760512'),
('Purple Rain', 13, 10, 1984, '075992517016'),
('Imagine', 14, 11, 1971, '602557567801'),
('Goodbye Yellow Brick Road', 15, 12, 1973, '602547832412'),
('24K Magic', 16, 16, 2016, '075678662028'),
('Happier Than Ever', 17, 15, 2021, '602435845812'),
('Divide', 18, 15, 2017, '190295851829'),
('Back to Black', 19, 15, 2006, '602517341212'),
('The Marshall Mathers LP', 20, 19, 2000, '0606949051023');

INSERT INTO AlbumGenres (AlbumID, GenreID) VALUES
(1, 1),(1, 2),
(2, 2),(2, 12),
(3, 2),(3, 7),
(4, 1),(4, 11),
(5, 3),(5, 7),
(6, 2),(6, 8),
(7, 1),(7, 2),
(8, 4),(8, 2),
(9, 5),(9, 7),
(10, 11),(10, 1),
(11, 2),(11, 3),
(12, 4),(12, 2),
(13, 2),(13, 7),
(14, 1),(14, 3),
(15, 1),(15, 2),
(16, 2),(16, 14),
(17, 2),(17, 11),
(18, 2),(18, 13),
(19, 2),(19, 4),
(20, 6),(20, 2);

INSERT INTO Media (AlbumID, MediaType, ReleaseYear) VALUES
(1, 'Vinyl', 1975),
(1, 'Streaming', 2011),
(2, 'Vinyl', 1956),
(3, 'CD', 1982),
(3, 'Streaming', 2010),
(4, 'Vinyl', 1972),
(5, 'CD', 1976),
(6, 'CD', 1984),
(7, 'Vinyl', 1973),
(8, 'CD', 1987),
(9, 'Vinyl', 1977),
(10, 'CD', 1991),
(11, 'CD', 2011),
(12, 'Streaming', 2016),
(13, 'CD', 1984),
(14, 'Vinyl', 1971),
(15, 'CD', 1973),
(16, 'Streaming', 2016),
(17, 'CD', 2021),
(18, 'CD', 2017),
(19, 'Streaming', 2006),
(20, 'CD', 2000);
