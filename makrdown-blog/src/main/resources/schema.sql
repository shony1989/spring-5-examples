CREATE TABLE IF NOT EXISTS author (
  id BIGINT IDENTITY PRIMARY KEY NOT NULL,
  email VARCHAR(255) NOT NULL,
  username VARCHAR(255) NULL ,
  first_name VARCHAR(255) NULL,
  last_name VARCHAR(255) NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  version BIGINT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS article (
  id BIGINT IDENTITY PRIMARY KEY NOT NULL,
  title VARCHAR(4096) NOT NULL,
  headline VARCHAR(4096) NULL ,
  content CLOB NULL ,
  author_id BIGINT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  version BIGINT NULL DEFAULT 0
);