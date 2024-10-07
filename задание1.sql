INSERT INTO artist(name)
VALUES('Queen'), ('Eminem'), ('Miley Cyrus'), ('The killers');

INSERT INTO genre(name)
VALUES('Rock'), ('Rap'), ('Pop'), ('Hard rock'), ('Pop rock'), ('Alternative');

INSERT INTO albums(name, year)
VALUES('The works', 1984), ('Innuedo', 1991), ('Plastic Hearts', 2020), ('Endless summer vacation', 2023), ('The slim shady LP', 1999), ('Hot fuss', 2004);

INSERT INTO tracks(name, duration, album_id)
VALUES('I want to break free', 3.42, 1), ('The show must go on', 4.30, 2), ('My name is', 4.28, 5), ('Mr. Brightside', 3.42, 6), ('Flowers', 3.20, 4), ('Plastic hearts', 3.25, 3), ('River', 2.42, 4);

INSERT INTO compilation(name, year)
VALUES('Rock and alternative', 2023), ('Rock music', 2019), ('Rap and songs', 2024), ('Rock and pop rock', 2022);

INSERT INTO artist_genre(artist_id, genre_id)
VALUES(1, 1), (1, 4), (2, 2), (3, 3), (3, 5), (4, 1), (4, 6);

INSERT INTO artist_album(artist_id, album_id)
VALUES(1, 1), (1, 2), (2, 5), (3, 3), (3, 4), (4, 6);

INSERT INTO compilation_track(compilation_id, track_id)
VALUES(1, 1), (1, 2), (1, 4), (2, 1), (2, 2), (3, 3), (3, 5), (4, 1), (4, 2), (4, 6);

