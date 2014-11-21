DROP TABLE IF EXISTS users;

CREATE TABLE users (
  userId INTEGER NULL AUTO_INCREMENT,
  username VARCHAR(16) NULL DEFAULT NULL,
  password VARCHAR(60) NULL DEFAULT NULL,
  phone INTEGER NULL DEFAULT NULL,
  email VARCHAR(30) NULL DEFAULT NULL,
  salt VARCHAR(60) NULL DEFAULT NULL,
  token VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (userId)
);

DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
  userId INTEGER NULL DEFAULT NULL,
  friendId INTEGER NULL DEFAULT NULL
);

DROP TABLE IF EXISTS pictures;

CREATE TABLE pictures (
  pictureId INTEGER NULL AUTO_INCREMENT,
  data MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (pictureId)
);

DROP TABLE IF EXISTS contents;    

CREATE TABLE contents (
  contentId INTEGER NULL AUTO_INCREMENT,
  userId INTEGER NULL DEFAULT NULL,
  pictureId INTEGER NULL DEFAULT NULL,
  topic VARCHAR(40) NULL DEFAULT NULL,
  yes INTEGER NULL DEFAULT 0,
  no INTEGER NULL DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (contentId)
);

DROP TABLE IF EXISTS receivers;    

CREATE TABLE receivers (
  contentId INTEGER NULL DEFAULT NULL,
  receiversId INTEGER NULL DEFAULT NULL
);

DROP TABLE IF EXISTS friendRequests;    

CREATE TABLE friendRequests (
  requesterId INTEGER NULL DEFAULT NULL,
  confirmerId INTEGER NULL DEFAULT NULL
);
