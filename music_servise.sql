CREATE TABLE IF NOT EXISTS Genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS Performers (
    performer_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS Performers_genres (
    performer_id INTEGER REFERENCES Performers(performer_id),
    genre_id INTEGER REFERENCES Genres(genre_id),
    CONSTRAINT pk PRIMARY KEY (performer_id, genre_id)
);
CREATE TABLE IF NOT EXISTS Albums(
    album_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    year SMALLINT NOT NULL
);
CREATE TABLE IF NOT EXISTS Albums_performers (
    performer_id INTEGER REFERENCES Performers(performer_id),
    album_id INTEGER REFERENCES Albums(album_id),
    CONSTRAINT ak PRIMARY KEY (performer_id, album_id)
);
CREATE TABLE IF NOT EXISTS Tracks(
    track_id INTEGER PRIMARY KEY REFERENCES Albums(album_id) ,
    name VARCHAR(50) NOT NULL,
    duration INTERVAL NOT NULL
);
CREATE TABLE IF NOT EXISTS Collections(
    collection_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    year SMALLINT NOT NULL
);
CREATE TABLE IF NOT EXISTS Tracks_collections (
    track_id INTEGER REFERENCES Tracks(track_id),
    collection_id INTEGER REFERENCES Collections(collection_id),
    CONSTRAINT ck PRIMARY KEY (track_id, collection_id)
);

    