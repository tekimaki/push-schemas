CREATE TABLE twitter (
  interaction_id VARCHAR(64) PRIMARY KEY,
  interaction_type VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  author_name text DEFAULT NULL,
  author_username text DEFAULT NULL,
  author_language VARCHAR(64) DEFAULT NULL,
  interaction_link TEXT DEFAULT NULL,
  followers_count INT DEFAULT NULL,
  user_description TEXT DEFAULT NULL,
  user_timezone VARCHAR(64) DEFAULT NULL,
  user_location VARCHAR(64) DEFAULT NULL,
  twitter_place_country VARCHAR(64) DEFAULT NULL,
  twitter_place_full_name VARCHAR(64) DEFAULT NULL,
  verified INT DEFAULT NULL,
  twitter_id VARCHAR(64) DEFAULT NULL,
  twitter_lang VARCHAR(64) DEFAULT NULL,
  is_retweet INTEGER DEFAULT NULL,
  twitter_retweeted_id VARCHAR(64) DEFAULT NULL,
  retweeted_author_screen_name VARCHAR(64) DEFAULT NULL,
  retweet_count INT DEFAULT NULL
);
CREATE INDEX twitter_interaction_type_idx ON twitter (interaction_type);
CREATE INDEX twitter_created_at_idx ON twitter (created_at);
