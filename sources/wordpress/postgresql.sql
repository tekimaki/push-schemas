CREATE TABLE IF NOT EXISTS wordpress (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NULL,
  type VARCHAR(50) DEFAULT NULL,
  id VARCHAR(255) DEFAULT NULL,
  title VARCHAR(255) DEFAULT NULL,
  content TEXT DEFAULT NULL,
  summary TEXT DEFAULT NULL,
  permalink TEXT DEFAULT NULL,
  updated_at TIMESTAMP DEFAULT NULL,
  published TIMESTAMP DEFAULT NULL,
  link TEXT DEFAULT NULL,
  inreplyto TEXT DEFAULT NULL,
  comment_id TEXT DEFAULT NULL  
);
CREATE INDEX wordpress_interaction_id_idx ON wordpress (interaction_id);
CREATE INDEX wordpress_created_at_idx ON wordpress (created_at);

CREATE TABLE IF NOT EXISTS wordpress_author (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  id TEXT DEFAULT NULL,
  username TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL
);
CREATE INDEX wordpress_author_interaction_id_idx ON wordpress_author (interaction_id);
CREATE INDEX wordpress_author_created_at_idx ON wordpress_author (created_at);

CREATE TABLE IF NOT EXISTS wordpress_blog (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  name TEXT DEFAULT NULL,
  summary TEXT DEFAULT NULL,
  link TEXT DEFAULT NULL,
  domain TEXT DEFAULT NULL,
  feed TEXT DEFAULT NULL,
  lang VARCHAR(50) DEFAULT NULL,
  id TEXT DEFAULT NULL,
  blog_id TEXT DEFAULT NULL
);
CREATE INDEX wordpress_blog_interaction_id_idx ON wordpress_blog (interaction_id);
CREATE INDEX wordpress_blog_created_at_idx ON wordpress_blog (created_at);

CREATE TABLE IF NOT EXISTS wordpress_article (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  title TEXT DEFAULT NULL,
  summary TEXT DEFAULT NULL,
  comment_count INTEGER DEFAULT NULL, 
  link TEXT DEFAULT NULL,
  blog_id TEXT DEFAULT NULL,
  post_id TEXT DEFAULT NULL
);
CREATE INDEX wordpress_article_interaction_id_idx ON wordpress_article (interaction_id);
CREATE INDEX wordpress_article_created_at_idx ON wordpress_article (created_at);
