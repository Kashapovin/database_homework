CREATE TABLE IF NOT EXISTS artists (
    id SERIAL PRIMARY  KEY,
    name varchar(40) NOT NULL    
);

CREATE TABLE IF NOT EXISTS jenres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL      
);  


CREATE TABLE IF NOT EXISTS ArtistJenre (
    id SERIAL PRIMARY KEY,
    jenre_id INTEGER NOT NULL REFERENCES artists(id),
    artist_id INTEGER NOT NULL REFERENCES jenres(id)
);

CREATE TABLE IF NOT EXISTS albums (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year_of_release INTEGER NOT NULL
); 

CREATE TABLE IF NOT EXISTS AlbumArtist (
    id SERIAL PRIMARY KEY,    
    album_id INTEGER NOT NULL REFERENCES albums(id),
    artist_id INTEGER NOT NULL REFERENCES artists(id)
    ); 
    
CREATE TABLE IF NOT EXISTS tracks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60),
    duration INTEGER NOT NULL,        
    album_id INTEGER REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS collections (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),    
    year_of_release INTEGER NOT NULL
);  

CREATE TABLE IF NOT EXISTS TrackCollection (
    id SERIAL PRIMARY KEY,    
    track_id INTEGER NOT NULL REFERENCES tracks(id),
    collection_id INTEGER NOT NULL REFERENCES collections(id)
 );  