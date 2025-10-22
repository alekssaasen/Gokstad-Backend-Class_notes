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
    MediaType VARCHAR(50), -- e.g., CD, Vinyl, Streaming, Deluxe
    ReleaseYear INT,
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);

-- Insert sample data: 20 artists
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

-- 20 labels
INSERT INTO Labels (Name, Country) VALUES
('EMI Records', 'United Kingdom'),
('Sony Music', 'United States'),
('Epic Records', 'United States'),
('RCA Records', 'United States'),
('Columbia Records', 'United States'),
('Island Records', 'United Kingdom'),
('Atlantic Records', 'United States'),
('Virgin Records', 'United Kingdom'),
('Motown', 'United States'),
('Universal Music', 'United States'),
('Capitol Records', 'United States'),
('Republic Records', 'United States'),
('Warner Bros. Records', 'United States'),
('Polydor', 'United Kingdom'),
('Def Jam', 'United States'),
('XL Recordings', 'United Kingdom'),
('Interscope Records', 'United States'),
('Tuff Gong', 'Jamaica'),
('Aftermath Entertainment', 'United States'),
('Mercury Records', 'United Kingdom');

-- 20 genres
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

-- 60 albums: 3 albums per artist (ArtistID 1..20)
INSERT INTO Albums (Title, ArtistID, LabelID, ReleaseYear, UPC) VALUES
('A Night at the Opera', 1, 1, 1975, '602547567890'),
('News of the World', 1, 1, 1977, '602547567891'),
('Sheer Heart Attack', 1, 1, 1974, '602547567892'),

('Elvis Presley', 2, 5, 1956, '887654321012'),
('Elvis Is Back!', 2, 5, 1960, '887654321013'),
('Elvis'' Golden Records', 2, 5, 1958, '887654321014'),

('Thriller', 3, 2, 1982, '074643811229'),
('Bad', 3, 2, 1987, '074643811230'),
('Off the Wall', 3, 2, 1979, '074643811231'),

('The Rise and Fall of Ziggy Stardust', 4, 3, 1972, '0825646287375'),
('Hunky Dory', 4, 3, 1971, '0825646287376'),
('Low', 4, 3, 1977, '0825646287377'),

('Songs in the Key of Life', 5, 9, 1976, '602537493928'),
('Innervisions', 5, 9, 1973, '602537493929'),
('Talking Book', 5, 9, 1972, '602537493930'),

('Like a Virgin', 6, 8, 1984, '075992512617'),
('True Blue', 6, 8, 1986, '075992512618'),
('Ray of Light', 6, 8, 1998, '075992512619'),

('Band on the Run', 7, 1, 1973, '077774601029'),
('McCartney', 7, 1, 1970, '077774601030'),
('Tug of War', 7, 1, 1982, '077774601031'),

('Whitney', 8, 10, 1987, '078635690121'),
('I''m Your Baby Tonight', 8, 10, 1990, '078635690122'),
('My Love Is Your Love', 8, 10, 1998, '078635690123'),

('Exodus', 9, 18, 1977, '602547378901'),
('Kaya', 9, 18, 1978, '602547378902'),
('Rastaman Vibration', 9, 18, 1976, '602547378903'),

('Nevermind', 10, 7, 1991, '720642442515'),
('In Utero', 10, 7, 1993, '720642442516'),
('Bleach', 10, 7, 1989, '720642442517'),

('19', 11, 15, 2008, '634904057912'),
('21', 11, 15, 2011, '634904057913'),
('25', 11, 15, 2015, '634904057914'),

('Dangerously in Love', 12, 17, 2003, '888751760512'),
('B\'Day', 12, 17, 2006, '888751760513'),
('Lemonade', 12, 17, 2016, '888751760514'),

('Purple Rain', 13, 10, 1984, '075992517016'),
('1999', 13, 10, 1982, '075992517017'),
('Sign o\' the Times', 13, 10, 1987, '075992517018'),

('Imagine', 14, 11, 1971, '602557567801'),
('Plastic Ono Band', 14, 11, 1970, '602557567802'),
('Mind Games', 14, 11, 1973, '602557567803'),

('Goodbye Yellow Brick Road', 15, 12, 1973, '602547832412'),
('Elton John', 15, 12, 1970, '602547832413'),
('Captain Fantastic and the Brown Dirt Cowboy', 15, 12, 1975, '602547832414'),

('24K Magic', 16, 16, 2016, '075678662028'),
('Unorthodox Jukebox', 16, 16, 2012, '075678662029'),
('Doo-Wops & Hooligans', 16, 16, 2010, '075678662030'),

('When We All Fall Asleep, Where Do We Go?', 17, 15, 2019, '602435845812'),
('Happier Than Ever', 17, 15, 2021, '602435845813'),
('Don''t Smile at Me', 17, 15, 2017, '602435845814'),

('Divide', 18, 15, 2017, '190295851829'),
('Multiply', 18, 15, 2014, '190295851830'),
('Plus', 18, 15, 2011, '190295851831'),

('Frank', 19, 15, 2003, '602517341210'),
('Back to Black', 19, 15, 2006, '602517341212'),
('Lioness: Hidden Treasures', 19, 15, 2011, '602517341213'),

('The Marshall Mathers LP', 20, 19, 2000, '0606949051023'),
('The Slim Shady LP', 20, 19, 1999, '0606949051024'),
('Encore', 20, 19, 2004, '0606949051025');

-- AlbumGenres: associate each album with 2 genres (varied)
INSERT INTO AlbumGenres (AlbumID, GenreID) VALUES
(1, 1),(1, 2),
(2, 1),(2, 1),
(3, 1),(3, 1),

(4, 2),(4, 12),
(5, 2),(5, 2),
(6, 2),(6, 2),

(7, 2),(7, 14),
(8, 2),(8, 14),
(9, 11),(9, 1),

(10, 3),(10, 7),
(11, 3),(11, 7),
(12, 3),(12, 7),

(13, 2),(13, 2),
(14, 2),(14, 2),
(15, 2),(15, 10),

(16, 1),(16, 2),
(17, 1),(17, 2),
(18, 1),(18, 2),

(19, 5),(19, 5),
(20, 5),(20, 5),
(21, 5),(21, 5),

(22, 11),(22, 1),
(23, 11),(23, 11),
(24, 11),(24, 11),

(25, 2),(25, 3),
(26, 2),(26, 3),
(27, 2),(27, 3),

(28, 4),(28, 2),
(29, 4),(29, 2),
(30, 4),(30, 2),

(31, 2),(31, 8),
(32, 2),(32, 8),
(33, 2),(33, 8),

(34, 2),(34, 7),
(35, 2),(35, 7),
(36, 2),(36, 7),

(37, 11),(37, 16),
(38, 11),(38, 16),
(39, 11),(39, 16),

(40, 2),(40, 1),
(41, 2),(41, 1),
(42, 2),(42, 1),

(43, 2),(43, 15),
(44, 2),(44, 15),
(45, 2),(45, 15),

(46, 10),(46, 2),
(47, 10),(47, 2),
(48, 10),(48, 2),

(49, 2),(49, 16),
(50, 2),(50, 16),
(51, 2),(51, 16),

(52, 2),(52, 14),
(53, 2),(53, 14),
(54, 2),(54, 14),

(55, 3),(55, 12),
(56, 3),(56, 12),
(57, 3),(57, 12),

(58, 6),(58, 6),
(59, 6),(59, 6),
(60, 6),(60, 6);

-- Media entries: for each album provide multiple formats (Vinyl, CD, Streaming, Deluxe where applicable)
INSERT INTO Media (AlbumID, MediaType, ReleaseYear) VALUES
-- Album 1..60, three formats each (approx. 180 rows)
(1, 'Vinyl', 1975),(1, 'CD', 1986),(1, 'Streaming', 2011),
(2, 'Vinyl', 1977),(2, 'CD', 1990),(2, 'Streaming', 2012),
(3, 'Vinyl', 1974),(3, 'CD', 1987),(3, 'Streaming', 2013),

(4, 'Vinyl', 1956),(4, 'CD', 1999),(4, 'Streaming', 2010),
(5, 'Vinyl', 1960),(5, 'CD', 1995),(5, 'Streaming', 2011),
(6, 'Vinyl', 1958),(6, 'CD', 2000),(6, 'Streaming', 2012),

(7, 'CD', 1982),(7, 'Streaming', 2010),
(8, 'CD', 1987),(8, 'Vinyl', 1987),(8, 'Streaming', 2011),
(9, 'CD', 1979),(9, 'Vinyl', 1979),(9, 'Streaming', 2012),

(10, 'Vinyl', 1972),(10, 'CD', 1995),(10, 'Streaming', 2013),
(11, 'Vinyl', 1971),(11, 'CD', 1998),(11, 'Streaming', 2014),
(12, 'Vinyl', 1977),(12, 'CD', 2005),(12, 'Streaming', 2015),

(13, 'Vinyl', 1976),(13, 'CD', 1990),(13, 'Streaming', 2016),
(14, 'Vinyl', 1973),(14, 'Streaming', 2017),
(15, 'Vinyl', 1972),(15, 'CD', 1992),(15, 'Streaming', 2018),

(16, 'CD', 1984),(16, 'Vinyl', 1984),(16, 'Streaming', 2012),
(17, 'CD', 1986),(17, 'Vinyl', 1986),(17, 'Streaming', 2013),
(18, 'CD', 1998),(18, 'Vinyl', 1998),(18, 'Streaming', 2014),

(19, 'Vinyl', 1973),(19, 'CD', 1999),(19, 'Streaming', 2010),
(20, 'Vinyl', 1970),(20, 'CD', 1997),(20, 'Streaming', 2011),
(21, 'Vinyl', 1982),(21, 'CD', 1998),(21, 'Streaming', 2015),

(22, 'Vinyl', 1973),(22, 'CD', 1996),(22, 'Streaming', 2014),
(23, 'Vinyl', 1972),(23, 'CD', 1994),(23, 'Streaming', 2015),
(24, 'Vinyl', 1977),(24, 'CD', 2000),(24, 'Streaming', 2016),

(25, 'CD', 1976),(25, 'Vinyl', 1976),(25, 'Streaming', 2011),
(26, 'CD', 1973),(26, 'Vinyl', 1973),(26, 'Streaming', 2012),
(27, 'CD', 1972),(27, 'Vinyl', 1972),(27, 'Streaming', 2013),

(28, 'CD', 1984),(28, 'Vinyl', 1984),(28, 'Streaming', 2016),
(29, 'CD', 1982),(29, 'Vinyl', 1982),(29, 'Streaming', 2014),
(30, 'CD', 1987),(30, 'Vinyl', 1987),(30, 'Streaming', 2015),

(31, 'Vinyl', 1971),(31, 'CD', 1998),(31, 'Streaming', 2010),
(32, 'Vinyl', 1970),(32, 'CD', 1999),(32, 'Streaming', 2011),
(33, 'Vinyl', 1973),(33, 'CD', 2001),(33, 'Streaming', 2012),

(34, 'CD', 1973),(34, 'Vinyl', 1973),(34, 'Streaming', 2013),
(35, 'CD', 1970),(35, 'Vinyl', 1970),(35, 'Streaming', 2014),
(36, 'CD', 1975),(36, 'Vinyl', 1975),(36, 'Streaming', 2015),

(37, 'CD', 2016),(37, 'Vinyl', 2016),(37, 'Streaming', 2016),
(38, 'CD', 2012),(38, 'Streaming', 2013),
(39, 'CD', 2010),(39, 'Vinyl', 2010),(39, 'Streaming', 2014),

(40, 'CD', 2019),(40, 'Vinyl', 2019),(40, 'Streaming', 2019),
(41, 'CD', 2021),(41, 'Vinyl', 2021),(41, 'Streaming', 2021),
(42, 'CD', 2017),(42, 'Streaming', 2017),

(49, 'CD', 1984),(49, 'Vinyl', 1984),(49, 'Streaming', 2010),
(50, 'CD', 1982),(50, 'Vinyl', 1982),(50, 'Streaming', 2011),
(51, 'CD', 1987),(51, 'Vinyl', 1987),(51, 'Streaming', 2013),

(52, 'CD', 1971),(52, 'Vinyl', 1971),(52, 'Streaming', 2014),
(53, 'CD', 1970),(53, 'Vinyl', 1970),(53, 'Streaming', 2015),
(54, 'CD', 1975),(54, 'Vinyl', 1975),(54, 'Streaming', 2016),

(55, 'CD', 2016),(55, 'Vinyl', 2016),(55, 'Streaming', 2016),
(56, 'CD', 2019),(56, 'Vinyl', 2019),(56, 'Streaming', 2019),
(57, 'CD', 2017),(57, 'Vinyl', 2017),(57, 'Streaming', 2018),

(58, 'CD', 2003),(58, 'Vinyl', 2003),(58, 'Streaming', 2010),
(59, 'CD', 2006),(59, 'Vinyl', 2006),(59, 'Streaming', 2011),
(60, 'CD', 2011),(60, 'Vinyl', 2011),(60, 'Streaming', 2014);
