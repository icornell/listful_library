DROP TABLE IF EXISTS USERS CASCADE;
DROP TABLE IF EXISTS LIBRARIES CASCADE;
DROP TABLE IF EXISTS BOOKS CASCADE;
DROP TABLE IF EXISTS GENRE_BOOKS CASCADE;
DROP TABLE IF EXISTS GENRES CASCADE;

CREATE TABLE IF NOT EXISTS USERS (
  ID SERIAL PRIMARY KEY NOT NULL,
  USERNAME VARCHAR(255) NOT NULL,
  PASSWORD VARCHAR(255) NOT NULL,
  EMAIL VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS LIBRARIES (
  ID SERIAL PRIMARY KEY NOT NULL,
  USER_ID INT REFERENCES USERS(ID) ON DELETE CASCADE,
  NAME VARCHAR(255) NOT NULL,
  PUBLIC BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS BOOKS (
  ID SERIAL PRIMARY KEY NOT NULL,
  LIBRARY_ID INT REFERENCES LIBRARIES(ID) ON DELETE CASCADE,
  NAME VARCHAR(255) NOT NULL,
  AUTHOR VARCHAR(255) NOT NULL,
  RATING INT NOT NULL,
  NOTES VARCHAR(1000) NOT NULL,
  OWNERSHIP BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS GENRES (
  ID SERIAL PRIMARY KEY NOT NULL,
  NAME VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS GENRE_BOOKS (
  BOOK_ID INT REFERENCES BOOKS(ID) ON DELETE CASCADE,
  GENRE_ID INT REFERENCES GENRES(ID) ON DELETE CASCADE
);
