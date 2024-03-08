CREATE TABLE IF NOT EXISTS genres (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS musicians (
	musician_id SERIAL PRIMARY KEY,
	musician_name VARCHAR UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	title VARCHAR,
	year_of_release INT CHECK (year_of_release > 1600)
);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY KEY,
	album_id INT NOT NULL,
	title VARCHAR,
	duration INT,
	FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collections (
	collection_id SERIAL PRIMARY KEY,
	title VARCHAR,
	year_of_release INT
);

CREATE TABLE IF NOT EXISTS musicians_genres (
	musician_genre_id SERIAL PRIMARY KEY,
	musician_id INT NOT NULL,
	genre_id INT NOT NULL,
	FOREIGN KEY (musician_id) REFERENCES musicians(musician_id),
	FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE IF NOT EXISTS albums_musicians (
	album_musician_id SERIAL PRIMARY KEY,
	album_id INT NOT NULL,
	musician_id INT NOT NULL,
	FOREIGN KEY (musician_id) REFERENCES musicians(musician_id),
	FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS track_lists (
	track_list_id SERIAL PRIMARY KEY,
	track_id INT NOT NULL,
	collection_id INT NOT NULL,
	FOREIGN KEY (track_id) REFERENCES tracks(track_id),
	FOREIGN KEY (collection_id) REFERENCES collections(collection_id)
);