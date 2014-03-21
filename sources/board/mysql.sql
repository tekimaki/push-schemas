CREATE TABLE IF NOT EXISTS board (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at DATETIME DEFAULT NULL,
  anchor VARCHAR(255) DEFAULT NULL,
  author_age TEXT DEFAULT NULL,
  author_avatar VARCHAR(255) DEFAULT NULL,
  author_gender VARCHAR(64) DEFAULT NULL,
  author_link VARCHAR(255) DEFAULT NULL,
  author_location VARCHAR(255) DEFAULT NULL,
  author_name VARCHAR(255) DEFAULT NULL,
  author_registered TEXT DEFAULT NULL,
  author_username VARCHAR(255) DEFAULT NULL,
  boardname VARCHAR(255) DEFAULT NULL,
  categories VARCHAR(255) DEFAULT NULL,
  content TEXT DEFAULT NULL,
  contenttype VARCHAR(64) DEFAULT NULL,
  countrycode VARCHAR(4) DEFAULT NULL,
  crawled TEXT DEFAULT NULL,
  domain VARCHAR(255) DEFAULT NULL,
  forumid VARCHAR(64) DEFAULT NULL,
  forumname VARCHAR(255) DEFAULT NULL,
  forumurl TEXT DEFAULT NULL,
  gmt TEXT DEFAULT NULL,
  language VARCHAR(64) DEFAULT NULL,
  link VARCHAR(255) DEFAULT NULL,
  links TEXT DEFAULT NULL,
  review_recommendation TEXT DEFAULT NULL,
  review_ticker TEXT DEFAULT NULL,
  siteid VARCHAR(64) DEFAULT NULL,
  thread VARCHAR(255) DEFAULT NULL,
  threadid INT DEFAULT NULL,
  threadstarter TEXT DEFAULT NULL,
  title VARCHAR(255) DEFAULT NULL,
  topics VARCHAR(255) DEFAULT NULL,
  board_type VARCHAR(64) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX board_interaction_id_idx ON board (interaction_id);
CREATE INDEX board_created_at_idx ON board (created_at);
