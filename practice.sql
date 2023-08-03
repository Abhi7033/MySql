-- Active: 1689142396029@@127.0.0.1@3306@tweets
-- -- insert into employee(first_name,last_name,age,current_status) VALUES('abhi','anand',21,'hi this is abhi');

--   using primary key and auto increment 
-- create table employees(
--     id int AUTO_INCREMENT,
--     last_name text not NULL,
--     first_name text not NULL,
--     middle_name text,
--     age int,
--     current_status VARCHAR(100) not NULL DEFAULT 'employed',
--     PRIMARY KEY(id)
-- );

-- Multiple inserting in the table

-- CREATE TABLE cats (
--     cat_id INT AUTO_INCREMENT,
--     name VARCHAR(100),
--     breed VARCHAR(100),
--     age INT,
--     PRIMARY KEY (cat_id)
-- ); 
-- INSERT INTO cats(name, breed, age) 
-- VALUES ('Ringo', 'Tabby', 4),
--        ('Cindy', 'Maine Coon', 10),
--        ('Dumbledore', 'Maine Coon', 11),
--        ('Egg', 'Persian', 4),
--        ('Misty', 'Tabby', 13),
--        ('George Michael', 'Ragdoll', 9),
--        ('Jackson', 'Sphynx', 7);

-- Use of where clause
-- select * from cats where age=4;

-- -- excercise
-- SELECT cat_id from cats;
-- SELECT name,breed from cats;
-- select name ,age from cats WHERE breed="tabby";
-- SELECT cat_id,age from cats where cat_id=age;

--  Aliases
-- we can change the column name as required for that particular QUERY
-- example-select cat_id as id , name from cats;

-- Updating Data
-- Change tabby cats to shorthair:
-- UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
-- Another update:
-- UPDATE cats SET age=14 WHERE name='Misty';

-- Update exercise
-- update cats set name='jack' where name='jackson';
-- update cats set breed='british shorthair' where name='ringo';
-- update cats set age=12 where breed='maine coons';

-- Delete all cats with name of 'Egg':
-- DELETE FROM cats WHERE name='Egg';
-- -- Delete all rows in the cats table:
-- DELETE FROM cats;

-- delete exercise
-- -- Delete all 4 year old cats:
-- DELETE FROM cats WHERE age=4;
-- -- Delete cats where cat_id is the same as their age:
-- DELETE FROM cats WHERE cat_id=age;
-- -- Delete all cats:
-- DELETE FROM cats;

-- create database shirts_db;
-- CRED Exercise:

-- create table shirts(
--     shirt_id int AUTO_INCREMENT PRIMARY KEY,
--     article text not null,
--     color text not NULL,
--     shirts_size text not null,
--     last_worn int not null
-- );

-- -- insert into shirts(article,color,shirts_size,last_worn) values('t-shirt','white','S',10),('t_shirt','green','S',200),('polo shirt','black','M',10);
-- select * from shirts;

-- SELECT article, color FROM shirts;
 
-- SELECT * FROM shirts WHERE shirt_size='M';
 
-- SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';

-- UPDATE shirts SET shirt_size = 'L'
-- WHERE article = 'polo shirt';
    
    
-- UPDATE shirts 
-- SET last_worn = 0
-- WHERE last_worn = 15;
-- UPDATE shirts 
-- SET color = 'off white',shirt_size = 'XS'
-- WHERE color = 'white';


-- DELETE
-- SELECT * FROM shirts WHERE last_worn=200;
-- DELETE FROM shirts WHERE last_worn=200;
-- SELECT * FROM shirts WHERE article='tank top';
-- DELETE FROM shirts WHERE article='tank top';
-- SELECT * FROM shirts;
-- DELETE FROM shirts;
-- DROP TABLE shirts;
--  show tables;
-- DESC shirts;

-- STRING Practice
-- CREATE DATABASE book_shop;
-- use book_shop;

-- CREATE TABLE books 

-- 	(
-- 		book_id INT AUTO_INCREMENT,
-- 		title VARCHAR(100),
-- 		author_fname VARCHAR(100),
-- 		author_lname VARCHAR(100),
-- 		released_year INT,
-- 		stock_quantity INT,
-- 		pages INT,
-- 		PRIMARY KEY(book_id)
-- 	);
 
-- INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES
-- ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
-- ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
-- ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
-- ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
-- ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
-- ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
-- ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
-- ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
-- ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
-- ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
-- ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
-- ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
-- ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
-- ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),             
-- ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
-- ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

-- CONCAT
-- SELECT CONCAT('pi', 'ckle');
-- SELECT CONCAT(author_fname,' ', author_lname) AS author_name FROM books;
-- SELECT CONCAT_WS('-',title, author_fname, author_lname) FROM books;

-- SUBSTRING
-- SELECT SUBSTRING('Hello World', 1, 4);
-- SELECT SUBSTRING('Hello World', 7);
-- SELECT SUBSTRING('Hello World', -3);
-- SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;
-- SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;

-- SELECT CONCAT
--     (
--         SUBSTRING(title, 1, 10),
--         '...'
--     ) AS 'short title'
-- FROM books;

-- REPLACE
-- SELECT REPLACE('Hello World', 'Hell', '%$#@');
-- SELECT REPLACE('Hello World', 'l', '7');
-- SELECT REPLACE('Hello World', 'o', '0');
-- SELECT REPLACE('HellO World', 'o', '*');
-- SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');
-- SELECT REPLACE(title, 'e ', '3') FROM books;
-- SELECT REPLACE(title, ' ', '-') FROM books;

-- REVERSE
-- SELECT REVERSE('Hello World');
-- SELECT REVERSE('meow meow');
-- SELECT REVERSE(author_fname) FROM books;
-- SELECT CONCAT('woof', REVERSE('woof'));
-- SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;

-- CHAR_LENGTH
-- SELECT CHAR_LENGTH('Hello World');
-- SELECT CHAR_LENGTH(title) as length, title FROM books;
-- SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
-- SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;

-- UPPER & LOWER
-- SELECT UPPER('Hello World');
-- SELECT LOWER('Hello World');
-- SELECT UPPER(title) FROM books;
-- SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
-- SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books; 

-- OTHER STRING FUNCTIONS
-- SELECT INSERT('Hello Bobby', 6, 0, 'There');
-- SELECT LEFT('omghahalol!', 3);
-- SELECT RIGHT('omghahalol!', 4);
-- SELECT REPEAT('ha', 4);
-- SELECT TRIM('  pickle  ');

-- STRING EXERCISE
-- SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));
-- SELECT REPLACE(title, ' ', '->') AS title FROM books;
-- SELECT 
--     author_lname AS forwards, REVERSE(author_lname) AS backwards
-- FROM
--     books;
-- SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;
-- SELECT CONCAT(title, ' was released in ', released_year) AS blurb FROM books;
-- SELECT title, CHAR_LENGTH(title) AS character_count FROM books;
-- SELECT 
--     CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
--     CONCAT(author_lname, ',', author_fname) AS author,
--     CONCAT(stock_quantity, ' in stock') AS quantity
-- FROM
--     books;



-- REFINING SELECTIONS:
-- DISTINCT
-- SELECT author_lname FROM books;
-- SELECT DISTINCT author_lname FROM books;
-- SELECT author_fname, author_lname FROM books;
-- SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
-- SELECT DISTINCT author_fname, author_lname FROM books;

-- ORDER BY
-- SELECT * FROM books
-- ORDER BY author_lname;
-- SELECT * FROM books
-- ORDER BY author_lname DESC;
-- SELECT * FROM books
-- -- ORDER BY released_year;

-- SELECT book_id, author_fname, author_lname, pages
-- FROM books ORDER BY 2 desc;
-- SELECT book_id, author_fname, author_lname, pages
-- FROM books ORDER BY author_lname, author_fname;

-- LIMIT
-- SELECT title FROM books LIMIT 3;
-- SELECT title FROM books LIMIT 1;
-- SELECT title FROM books LIMIT 10;
-- SELECT * FROM books LIMIT 1;
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 5;
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 1;
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 14;
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 0,5;
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 0,3;
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 1,3;
-- SELECT title, released_year FROM books 
-- ORDER BY released_year DESC LIMIT 10,1;
-- SELECT * FROM tbl LIMIT 95,18446744073709551615;
-- SELECT title FROM books LIMIT 5;
-- SELECT title FROM books LIMIT 5, 123219476457;
-- SELECT title FROM books LIMIT 5, 50;

-- LIKE
-- SELECT title, author_fname, author_lname, pages 
-- FROM books
-- WHERE author_fname LIKE '%da%';
-- SELECT title, author_fname, author_lname, pages 
-- FROM books
-- WHERE title LIKE '%:%';
-- SELECT * FROM books
-- WHERE author_fname LIKE '____';
-- SELECT * FROM books
-- WHERE author_fname LIKE '_a_';

-- ESCAPING WILDCARD
-- To select books with '%' in their title:
-- SELECT * FROM books
-- WHERE title LIKE '%\%%';
-- To select books with an underscore '_' in title:
-- SELECT * FROM books
-- WHERE title LIKE '%\_%';



-- REFINING EXERCISE
-- SELECT title FROM books WHERE title LIKE '%stories%';
-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
-- SELECT 
--     CONCAT(title, ' - ', released_year) AS summary 
-- FROM books ORDER BY released_year DESC LIMIT 3;
-- SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
-- SELECT title, released_year, stock_quantity 
-- FROM books ORDER BY stock_quantity LIMIT 3;
-- SELECT title, author_lname 
-- FROM books ORDER BY author_lname, title;
-- SELECT title, author_lname 
-- FROM books ORDER BY 2,1;
-- SELECT
--     CONCAT(
--         'MY FAVORITE AUTHOR IS ',
--         UPPER(author_fname),
--         ' ',
--         UPPER(author_lname),
--         '!'
--     ) AS yell
-- FROM books ORDER BY author_lname;


-- AGGREGATE FUNCTION
-- COUNT
-- SELECT COUNT(*) FROM books;
-- SELECT COUNT(author_lname) FROM books;
-- SELECT COUNT(DISTINCT author_lname) FROM books;


-- GROUP BY
-- SELECT author_lname, COUNT(*) 
-- FROM books
-- GROUP BY author_lname;
-- SELECT 
--     author_lname, COUNT(*) AS books_written
-- FROM
--     books
-- GROUP BY author_lname
-- ORDER BY books_written DESC;


-- MAX AND MIN
-- SELECT MAX(pages) FROM books;
-- SELECT MIN(author_lname) FROM books;

-- SUBQUERIES
-- SELECT title, pages FROM books
-- WHERE pages = (SELECT MAX(pages) FROM books);
-- SELECT MIN(released_year) FROM books;
-- SELECT title, released_year FROM books 
-- WHERE released_year = (SELECT MIN(released_year) FROM books);

-- GROUPING BY MULTIPLE COLUMNS
-- SELECT author_fname, author_lname, COUNT(*) 
-- FROM books 
-- GROUP BY author_lname, author_fname;
-- SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*)
-- FROM books
-- GROUP BY author;

-- MIN AND MAX WITH GROUP BY
-- SELECT author_lname, MIN(released_year) FROM books GROUP BY author_lname;
-- SELECT author_lname, MAX(released_year), MIN(released_year) FROM books GROUP BY author_lname;
-- SELECT 
-- 	author_lname, 
-- 	COUNT(*) as books_written, 
-- 	MAX(released_year) AS latest_release,
-- 	MIN(released_year)  AS earliest_release,
--       MAX(pages) AS longest_page_count
-- FROM books GROUP BY author_lname;
-- SELECT 
-- 	author_lname, 
--         author_fname,
-- 	COUNT(*) as books_written, 
-- 	MAX(released_year) AS latest_release,
-- 	MIN(released_year)  AS earliest_release
-- FROM books GROUP BY author_lname, author_fname;


-- SUM
-- SELECT SUM(pages) FROM books;
-- SELECT author_lname, COUNT(*), SUM(pages)
-- FROM books
-- GROUP BY author_lname;


-- AVEARAGE
-- SELECT AVG(pages) FROM books;
-- SELECT AVG(released_year) FROM books;
-- SELECT 
--     released_year, 
--     AVG(stock_quantity), 
--     COUNT(*) FROM books
-- GROUP BY released_year;


-- AGGREGATE EXERCISE
-- SELECT COUNT(*) FROM books;
-- SELECT released_year, COUNT(*) 
-- FROM books GROUP BY released_year;
-- SELECT AVG(released_year) 
-- FROM books GROUP BY author_lname, author_fname
-- SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
-- WHERE pages = (SELECT MAX(pages) FROM books);
-- SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
-- ORDER BY pages DESC LIMIT 1;
-- SELECT 
--     released_year AS year,
--     COUNT(*) AS '# books',
--     AVG(pages) AS 'avg pages'
-- FROM books
-- GROUP BY released_year
-- ORDER BY released_year;


-- DATE AND TIME
-- CREATE TABLE people (
-- 	name VARCHAR(100),
--     birthdate DATE,
--     birthtime TIME,
--     birthdt DATETIME
-- );
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

-- CURDATE & CURTIME & NOW
-- SELECT CURTIME();
-- SELECT CURDATE();
-- SELECT NOW();
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Hazel', CURDATE(), CURTIME(), NOW());


-- DATE FUNCTIONS
-- SELECT 
--     birthdate,
--     DAY(birthdate),
--     DAYOFWEEK(birthdate),
--     DAYOFYEAR(birthdate)
-- FROM people;
-- SELECT 
--     birthdate,
--     MONTHNAME(birthdate),
--     YEAR(birthdate)
-- FROM people;
