INSERT INTO 
genres(genre_name)
VALUES
('индастриал-метал'),
('инди-рок'),
('арт-поп'),
('арт-рок'),
('альтернативный рок'),
('пост-гранж'),
('брит-поп'),
('хард-рок'),
('альтернативный метал'),
('готик-рок'),
('глэм-рок'),
('поп-рок')

INSERT INTO 
musicians(musician_name)
VALUES
('Rammstein'),
('Placebo'),
('David Bowie'),
('Evanescence'),
('Queen')

INSERT INTO 
albums(title, year_of_release)
VALUES
('Sehnsucht', 1997),
('Mutter', 2001),
('Rammstein', 2019),
('Meds', 2006),
('Sleeping with Ghosts', 2003),
('Let’s Dance', 1983),
('Space Oddity', 1969),
('Fallen', 2003),
('The Open Door', 2006),
('Evanescence', 2011),
('Hot Space', 1982),
('Innuendo', 1991)

INSERT INTO 
tracks(album_id, title, duration)
VALUES
(1, 'Engel', 264),
(1, 'Klavier', 262),
(1, 'Du hast', 234),
(1, 'Spiel mit mir', 285),
(2, 'Mein Herz brennt', 279),
(2, 'Sonne', 273),
(2, 'Ich will', 217),
(2, 'Nebel', 294),
(3, 'Deutschland', 326),
(3, 'Radio', 277),
(3, 'Was ich liebe', 269),
(4, 'Meds', 175),
(4, 'Space Monkey', 231),
(4, 'Song to Say Goodbye', 261),
(5, '20th Century Boy', 279),
(5, 'The Bitter End', 190),
(5, 'Special Needs', 315),
(5, 'Protect Me from What I Want', 195),
(6, 'Lets Dance', 458),
(6, 'Without You', 188),
(6, 'Criminal World', 265),
(7, 'Space Oddity', 315),
(7, 'God Knows Im Good', 193),
(7, 'Wild eyed boy from freecloud', 285),
(8, 'Going under', 215),
(8, 'Bring me to life', 237),
(8, 'My immortal', 264),
(8, 'Imaginary', 257),
(8, 'Taking over me', 229),
(9, 'Call me when youre sober', 214),
(9, 'Lithium', 257),
(9, 'All that Im living for', 228),
(9, 'Cloud Nine', 262),
(10, 'Lost in Paradise', 282),
(10, 'Oceans', 216),
(10, 'New Way to Bleed', 226),
(10, 'Disappear', 187),
(11, 'Under Pressure', 242),
(11, 'Las Palabras de Amor', 266),
(11, 'Dancer', 226),
(12, 'Innuendo', 389),
(12, 'Im Going Slightly Mad', 262),
(12, 'The Show Must Go On', 264)

INSERT INTO 
collections(title, year_of_release)
VALUES
('Made in Germany', 2011),
('Trial By Fire', 2000),
('A Place for Us to Dream', 2016),
('Once More with Feeling', 2004),
('The Best of Bowie', 1980),
('Fame and Fashion', 1984),
('Lost Whispers', 2017),
('Greatest hits', 1991),
('The 12 inches collection', 1992)


INSERT INTO 
musicians_genres(musician_id, genre_id)
VALUES
(1, 1),
(1, 8),
(2, 2),
(2, 5),
(2, 6),
(2, 7),
(3, 3),
(3, 4),
(3, 5),
(3, 8),
(3, 12),
(4, 8),
(4, 9),
(4, 10),
(5, 8),
(5, 11),
(5, 12)

INSERT INTO 
albums_musicians(album_id, musician_id)
VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 4),
(9, 4),
(10, 4),
(11, 5),
(12, 5),
(11, 3)

INSERT INTO 
track_lists(track_id, collection_id)
VALUES
(1, 1),
(5, 1),
(6, 1),
(7, 1),
(1, 2),
(3, 2),
(4, 2),
(12, 3),
(14, 3),
(16, 3),
(17, 3),
(14, 4),
(15, 4),
(16, 4),
(22, 5),
(22, 6),
(36, 7),
(37, 7),
(38, 8),
(41, 8),
(42, 8),
(43, 8),
(43, 9)
