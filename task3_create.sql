CREATE TABLE IF NOT EXISTS Genre (
  id SERIAL PRIMARY KEY,
  name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
  id SERIAL PRIMARY KEY,
  name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_Artist (
  genre_id INTEGER REFERENCES Genre(id),
  artist_id INTEGER REFERENCES Artist(id),
  CONSTRAINT pk1 PRIMARY KEY (genre_id, artist_id) 
);

CREATE TABLE IF NOT EXISTS Album (
  id SERIAL PRIMARY KEY,  
  name VARCHAR(80) NOT NULL,
  year INTEGER NOT NULL CHECK(year > 0)
);

CREATE TABLE IF NOT EXISTS Artist_Album (
  artist_id INTEGER REFERENCES Artist(id),
  album_id INTEGER REFERENCES Album(id),
  CONSTRAINT pk2 PRIMARY KEY (artist_id, album_id) 
);

CREATE TABLE IF NOT EXISTS Track (
  id SERIAL PRIMARY KEY,
  album_id INTEGER REFERENCES Album(id),
  name VARCHAR(80) NOT NULL,
  duration NUMERIC NOT NULL CHECK(duration > 0)
);

CREATE TABLE IF NOT EXISTS Collection (
  id SERIAL PRIMARY KEY,  
  name VARCHAR(80) NOT NULL,
  year INTEGER NOT NULL check(year > 0)
);

CREATE TABLE IF NOT EXISTS Collection_Track (
  collection_id INTEGER REFERENCES Collection(id),
  track_id INTEGER REFERENCES Track(id),
  CONSTRAINT PK3 PRIMARY KEY (collection_id, track_id) 
);

