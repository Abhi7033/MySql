-- CREATE DATABASE ig_clone;
-- use ig_clone;
-- CREATE TABLE users(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     created_at TIMESTAMP DEFAULT now()
-- );

-- CREATE Table photos(
--     id INT AUTO_INCREMENT PRIMARY key,
--     image_url VARCHAR(255) not NULL,
--     user_id   INTEGER NOT NULL,
--     created_at TIMESTAMP DEFAULT now(),
--     FOREIGN KEY(user_id) REFERENCES users(id)

-- );
-- SHOW TABLEs;

-- CREATE TABLE comments(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     comment_text VARCHAR(255) not NULL,
--     user_id INT NOT NULL,
--     photo_id INT not null,
--     created_at TIMESTAMP DEFAULT now(),
--     FOREIGN KEY(user_id) REFERENCES users(id),
--     Foreign Key (photo_id) REFERENCES photos(id)
-- )

-- CREATE TABLE likes(
--  user_id INTEGER NOT NULL,
--  photo_id INTEGER NOT NULL,
--  created_at TIMESTAMP DEFAULT NOW(),
--  FOREIGN KEY(user_id) REFERENCES users(id),
--  FOREIGN KEY(photo_id) REFERENCES photos(id),
--  PRIMARY KEY(user_id,photo_id)
-- );

-- CREATE TABLE follows(
-- follower_id INTEGER NOT NULL,
-- followee_id INTEGER NOT NULL,
-- created_at TIMESTAMP DEFAULT NOW(),
-- FOREIGN KEY (follower_id) REFERENCES users(id),
-- FOREIGN KEY (follower_id) REFERENCES users(id),
-- PRIMARY KEY (follower_id,followee_id)
-- );

-- create table tags(
--     id integer AUTO_INCREMENT PRIMARY KEY,
--     tag_name VARCHAR(255) UNIQUE,
--     created_at TIMESTAMP DEFAULT now()
-- );
CREATE Table photo_tags(
    photo_id INTEGER not NULL,
    tag_id INTEGER NOT NULL,
    Foreign Key (photo_id) REFERENCES photos(id),
    Foreign Key (tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id,tag_id)
);