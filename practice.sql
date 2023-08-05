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

-- SELECT 
--     birthtime,
--     HOUR(birthtime),
--     MINUTE(birthtime)
-- FROM people;
-- SELECT 
--     birthdt,
--     MONTH(birthdt),
--     DAY(birthdt),
--     HOUR(birthdt),
--     MINUTE(birthdt)
-- FROM people;

-- FORMATTING DATE AND TIME
-- SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;
-- SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
-- SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;


-- DEFAULT AND ON UPDATE TIMESTAMP
-- CREATE TABLE captions (
--   text VARCHAR(150),
--   created_at TIMESTAMP default CURRENT_TIMESTAMP
-- );
-- CREATE TABLE captions2 (
--   text VARCHAR(150),
--   created_at TIMESTAMP default CURRENT_TIMESTAMP,
--   updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- );


-- DATATYPES EXERCISE
-- CREATE TABLE inventory (
--     item_name VARCHAR(100),
--     price DECIMAL(8,2),
--     quantity INT
-- );
  
-- SELECT CURTIME();
-- SELECT CURDATE();
-- SELECT DAYOFWEEK(CURDATE());
-- SELECT DAYOFWEEK(NOW());
-- SELECT DATE_FORMAT(NOW(), '%w') + 1;
-- SELECT DAYNAME(NOW());
-- SELECT DATE_FORMAT(NOW(), '%W');
-- SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
-- SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');
-- CREATE TABLE tweets(
--     content VARCHAR(140),
--     username VARCHAR(20),
--     created_at TIMESTAMP DEFAULT NOW()
-- );
-- INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
-- SELECT * FROM tweets;
-- INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
-- SELECT * FROM tweets;




-- COMPARISON AND LOGICAL OPERATORS
-- NOT EQUAL
-- SELECT * FROM books
-- WHERE released_year != 2017;

-- NOT LIKE
-- SELECT * FROM books
-- WHERE title NOT LIKE '%e%';

-- GREATER THAN
-- SELECT * FROM books
-- WHERE released_year > 2005;
-- SELECT * FROM books
-- WHERE pages > 500;

-- LESS THAN OR EQUAL TO
-- SELECT * FROM books
-- WHERE pages < 200;
-- SELECT * FROM books
-- WHERE released_year < 2000;
-- SELECT * FROM books
-- WHERE released_year <= 1985;

-- LOGICAL AND
-- SELECT title, author_lname, released_year FROM books
-- WHERE released_year > 2010
-- AND author_lname = 'Eggers';
-- SELECT title, author_lname, released_year FROM books
-- WHERE released_year > 2010
-- AND author_lname = 'Eggers'
-- AND title LIKE '%novel%';

-- LOGICAL OR
-- SELECT title, pages FROM books 
-- WHERE CHAR_LENGTH(title) > 30
-- AND pages > 500;
-- SELECT title, author_lname FROM books
-- WHERE author_lname='Eggers' AND
-- released_year > 2010;
-- SELECT title, author_lname, released_year FROM books
-- WHERE author_lname='Eggers' OR
-- released_year > 2010;
-- SELECT title, pages FROM books
-- WHERE pages < 200 
-- OR title LIKE '%stories%';

-- BETWEEN AND NOT BETWEEN
-- SELECT title, released_year FROM books
-- WHERE released_year <= 2015
-- AND released_year >= 2004;
-- SELECT title, released_year FROM books
-- WHERE released_year BETWEEN 2004 AND 2014;

-- COMPARING DATES
-- SELECT * FROM people WHERE birthtime 
-- BETWEEN CAST('12:00:00' AS TIME) 
-- AND CAST('16:00:00' AS TIME);
-- SELECT * FROM people WHERE HOUR(birthtime)
-- BETWEEN 12 AND 16;

-- IN AND NOT IN OPERATOR
-- SELECT title, author_lname FROM books
-- WHERE author_lname = 'Carver' 
-- OR author_lname = 'Lahiri'
-- OR author_lname = 'Smith';
-- SELECT title, author_lname FROM books
-- WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
-- SELECT title, author_lname FROM books
-- WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');
-- SELECT title, released_year FROM books
-- WHERE released_year >= 2000 
-- AND released_year % 2 = 1;

-- CASE WITH OPERATORS
-- SELECT title, released_year,
-- CASE
-- 	WHEN released_year >= 2000 THEN 'modern lit'
--     ELSE '20th century lit' 
-- END AS genre
-- FROM books;
-- SELECT 
--     title,
--     stock_quantity,
--     CASE
--         WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
--         WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
--         WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
--         WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
--         ELSE '*****'
--     END AS stock
-- FROM
--     books;
-- SELECT 
--     title,
--     stock_quantity,
--     CASE
--         WHEN stock_quantity <= 40 THEN '*'
--         WHEN stock_quantity <= 70 THEN '**'
--         WHEN stock_quantity <= 100 THEN '***'
--         WHEN stock_quantity <= 140 THEN '****'
--         ELSE '*****'
--     END AS stock
-- FROM
--     books;

-- LOGICAL OPERATOR AND COMPARISON EXERCISE
-- SELECT * FROM books WHERE released_year < 1980;
-- SELECT * FROM books 
-- WHERE author_lname = 'Eggers'
-- OR author_lname = 'Chabon';
-- SELECT * FROM books
-- WHERE author_lname = 'Lahiri'
-- AND released_year > 2000;
-- SELECT * FROM books
-- WHERE pages >= 100 
-- AND pages <= 200;
-- SELECT * FROM books
-- WHERE pages BETWEEN 100 and 200;
-- SELECT title, author_lname FROM books
-- WHERE author_lname LIKE 'C%'
-- OR author_lname LIKE 'S%';
-- SELECT title, author_lname
-- FROM books WHERE SUBSTR(author_lname, 1, 1) in ('C', 'S');
-- SELECT title, author_lname,
-- CASE
--     WHEN title LIKE '%stories%' THEN 'Short Stories'
--     WHEN title = 'Just Kids' THEN 'Memoir' 
--     WHEN title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memior'
--     ELSE 'Novel'
-- END AS type
-- FROM books;
-- SELECT author_fname, author_lname,
-- 	CASE
--         WHEN COUNT(*) = 1 THEN '1 book'
--         ELSE CONCAT(COUNT(*), ' books')
-- 	END AS count
-- FROM books
-- WHERE author_lname IS NOT NULL
-- GROUP BY author_fname, author_lname;
 


--  CONSTRAINTS AND ALTER TABLE
--  CREATE TABLE contacts (
-- 	name VARCHAR(100) NOT NULL,
--     phone VARCHAR(15) NOT NULL UNIQUE
-- );
-- INSERT INTO contacts (name, phone)
-- VALUES ('billybob', '8781213455');
-- This insert would result in an error:
-- INSERT INTO contacts (name, phone)
-- VALUES ('billybob', '8781213455');


-- CHECK
-- CREATE TABLE users (
-- 	username VARCHAR(20) NOT NULL,
--     age INT CHECK (age > 0)
-- );
-- CREATE TABLE palindromes (
--   word VARCHAR(100) CHECK(REVERSE(word) = word)
-- )


-- NAMED CONSTRAINT
-- CREATE TABLE users2 (
--     username VARCHAR(20) NOT NULL,
--     age INT,
--     CONSTRAINT age_not_negative CHECK (age >= 0)
-- );
-- CREATE TABLE palindromes2 (
--   word VARCHAR(100),
--   CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
-- );

-- MULTIPLE COLUMN CONSTRAINT
-- CREATE TABLE companies (
--     name VARCHAR(255) NOT NULL,
--     address VARCHAR(255) NOT NULL,
--     CONSTRAINT name_address UNIQUE (name , address)
-- );
-- CREATE TABLE houses (
--   purchase_price INT NOT NULL,
--   sale_price INT NOT NULL,
--   CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
-- );

-- ALTER TABLE - ADD NEW COLUMN
-- ALTER TABLE companies 
-- ADD COLUMN phone VARCHAR(15);
-- ALTER TABLE companies
-- ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

-- DROP COLUMN FROM TABLE
-- ALTER TABLE companies DROP COLUMN phone;

-- RENAME TABLE AND COLUMN
-- RENAME TABLE companies to suppliers;
-- ALTER TABLE suppliers RENAME TO companies;
-- ALTER TABLE companies
-- RENAME COLUMN name TO company_name;

-- MODIFY
-- ALTER TABLE companies
-- MODIFY company_name VARCHAR(100) DEFAULT 'unknown';
-- ALTER TABLE suppliers
-- CHANGE business biz_name VARCHAR(50);

-- DROP CONSTRAINT AND TABLE CONSTRAINT
-- ALTER TABLE houses 
-- ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);
-- ALTER TABLE houses DROP CONSTRAINT positive_pprice;


-- JOINS
-- PRIMARY KEY AND FOREIGN KEY`
-- CREATE TABLE customers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     email VARCHAR(50)
-- );
-- CREATE TABLE orders (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     order_date DATE,
--     amount DECIMAL(8,2),
--     customer_id INT,
--     FOREIGN KEY (customer_id) REFERENCES customers(id)
-- );
-- INSERT INTO customers (first_name, last_name, email) 
--  VALUES ('Boy', 'George', 'george@gmail.com'),
--        ('George', 'Michael', 'gm@gmail.com'),
--        ('David', 'Bowie', 'david@gmail.com'),
--        ('Blue', 'Steele', 'blue@gmail.com'),
--        ('Bette', 'Davis', 'bette@aol.com');  
-- INSERT INTO orders (order_date, amount, customer_id)
-- VALUES ('2016-02-10', 99.99, 1),
--        ('2017-11-11', 35.50, 1),
--        ('2014-12-12', 800.67, 2),
--        ('2015-01-03', 12.50, 2),
--        ('1999-04-11', 450.25, 5);

-- CROSS JOINS
-- SELECT id FROM customers WHERE last_name = 'George';
-- SELECT * FROM orders WHERE customer_id = 1;
-- SELECT * FROM orders 
-- WHERE customer_id = (SELECT id FROM customers WHERE last_name = 'George');
-- To perform a (kind of useless) cross join:
-- SELECT * FROM customers, orders;



-- INNER JOIN

-- SELECT * FROM customers JOIN orders ON
-- -- customers.ID = orders.customer_id;
-- SELECT first_name, last_name, order_date, amount FROM customers
-- JOIN orders ON orders.customer_id = customers.id;
-- -- The order doesn't matter here:
-- SELECT * FROM orders
-- JOIN customers ON customers.id = orders.customer_id;



-- INNER JOIN WITH GROUP BY
-- SELECT 
--     first_name, last_name, SUM(amount) AS total
-- FROM
--     customers
--         JOIN
--     orders ON orders.customer_id = customers.id
-- GROUP BY first_name , last_name
-- ORDER BY total;


-- LEFT JOIN
-- SELECT 
--     first_name, last_name, order_date, amount
-- FROM
--     customers
--         LEFT JOIN
--     orders ON orders.customer_id = customers.id;
-- SELECT 
--     order_date, amount, first_name, last_name
-- FROM
--     orders
--         LEFT JOIN
--     customers ON orders.customer_id = customers.id;


-- LEFT JOIN WITH GROUP BY
-- SELECT 
--     first_name, 
--     last_name, 
--     IFNULL(SUM(amount), 0) AS money_spent
-- FROM
--     customers
--         LEFT JOIN
--     orders ON customers.id = orders.customer_id
-- GROUP BY first_name , last_name;

-- RIGHT JOIN
-- SELECT 
--     first_name, last_name, order_date, amount
-- FROM
--     customers
--         RIGHT JOIN
--     orders ON customers.id = orders.customer_id;


-- ON DELETE CASCADE
-- CREATE TABLE customers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     email VARCHAR(50)
-- );
-- CREATE TABLE orders (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     order_date DATE,
--     amount DECIMAL(8 , 2 ),
--     customer_id INT,
--     FOREIGN KEY (customer_id)
--         REFERENCES customers (id)
--         ON DELETE CASCADE
-- );


-- JOIN EXERCISE
-- CREATE TABLE students (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50)
-- );
-- CREATE TABLE papers (
--     title VARCHAR(50),
--     grade INT,
--     student_id INT,
--     FOREIGN KEY (student_id)
--         REFERENCES students (id)
-- );
-- SELECT 
--     first_name, title, grade
-- FROM
--     students
--         JOIN
--     papers ON papers.student_id = students.id
-- ORDER BY grade DESC;
-- SELECT 
--     first_name, title, grade
-- FROM
--     students
--         LEFT JOIN
--     papers ON papers.student_id = students.id;
-- SELECT 
--     first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0)
-- FROM
--     students
--         LEFT JOIN
--     papers ON papers.student_id = students.id;
-- SELECT 
--     first_name, IFNULL(AVG(grade), 0) AS average
-- FROM
--     students
--         LEFT JOIN
--     papers ON students.id = papers.student_id
-- GROUP BY first_name
-- ORDER BY average DESC;
-- SELECT 
--     first_name,
--     IFNULL(AVG(grade), 0) AS average,
--     CASE
--         WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'passing'
--         ELSE 'failing'
--     END AS passing_status
-- FROM
--     students
--         LEFT JOIN
--     papers ON students.id = papers.student_id
-- GROUP BY first_name
-- ORDER BY average DESC;

-- MANY TO MANY RELATIONSHIPS
-- CREATE TABLE reviewers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL
-- );
 
-- CREATE TABLE series (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     title VARCHAR(100),
--     released_year YEAR,
--     genre VARCHAR(100)
-- );
 
-- CREATE TABLE reviews (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     rating DECIMAL(2 , 1 ),
--     series_id INT,
--     reviewer_id INT,
--     FOREIGN KEY (series_id)
--         REFERENCES series (id),
--     FOREIGN KEY (reviewer_id)
--         REFERENCES reviewers (id)
-- );
 
-- INSERT INTO series (title, released_year, genre) VALUES
--     ('Archer', 2009, 'Animation'),
--     ('Arrested Development', 2003, 'Comedy'),
--     ("Bob's Burgers", 2011, 'Animation'),
--     ('Bojack Horseman', 2014, 'Animation'),
--     ("Breaking Bad", 2008, 'Drama'),
--     ('Curb Your Enthusiasm', 2000, 'Comedy'),
--     ("Fargo", 2014, 'Drama'),
--     ('Freaks and Geeks', 1999, 'Comedy'),
--     ('General Hospital', 1963, 'Drama'),
--     ('Halt and Catch Fire', 2014, 'Drama'),
--     ('Malcolm In The Middle', 2000, 'Comedy'),
--     ('Pushing Daisies', 2007, 'Comedy'),
--     ('Seinfeld', 1989, 'Comedy'),
--     ('Stranger Things', 2016, 'Drama');
 
 
-- INSERT INTO reviewers (first_name, last_name) VALUES
--     ('Thomas', 'Stoneman'),
--     ('Wyatt', 'Skaggs'),
--     ('Kimbra', 'Masters'),
--     ('Domingo', 'Cortes'),
--     ('Colt', 'Steele'),
--     ('Pinkie', 'Petit'),
--     ('Marlon', 'Crafford');
    
 
-- INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
--     (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
--     (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
--     (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
--     (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
--     (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
--     (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
--     (7,2,9.1),(7,5,9.7),
--     (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
--     (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
--     (10,5,9.9),
--     (13,3,8.0),(13,4,7.2),
--     (14,2,8.5),(14,3,8.9),(14,4,8.9);

-- TV SERIES CHALLENGE
-- SELECT first_name,last_name,rating from reviewers
-- join reviews on reviewers.id=reviews.reviewer_id; 


-- select title, ROUND(AVG(rating),2) as avg_rating from series
-- JOIN reviews on series.id=reviews.series_id
-- GROUP BY title
-- ORDER BY avg_rating;

-- SELECT 
--     title AS unreviewed_series
-- FROM
--     series
--         LEFT JOIN
--     reviews ON series.id = reviews.series_id
-- WHERE
--     rating IS NULL;
 
 
-- SELECT 
--     title AS unreviewed_series
-- FROM
--     reviews
--         RIGHT JOIN
--     series ON series.id = reviews.series_id
-- WHERE
--     rating IS NULL;

-- SELECT genre, AVG(rating) as avg_rating from series
-- JOIN reviews on series.id=reviews.series_id
-- group by genre;

-- USING CASE 
-- SELECT 
--     first_name,
--     last_name,
--     COUNT(rating) AS count,
--     IFNULL(MIN(rating), 0) AS min,
--     IFNULL(MAX(rating), 0) AS max,
--     ROUND(IFNULL(AVG(rating), 0), 2) AS average,
--     CASE
--         WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
--         WHEN COUNT(rating) > 0 THEN 'ACTIVE'
--         ELSE 'INACTIVE'
--     END AS status
-- FROM
--     reviewers
--         LEFT JOIN
--     reviews ON reviewers.id = reviews.reviewer_id
-- GROUP BY first_name , last_name;
 
-- -- USING IF 
-- SELECT 
--     first_name,
--     last_name,
--     COUNT(rating) AS count,
--     IFNULL(MIN(rating), 0) AS min,
--     IFNULL(MAX(rating), 0) AS max,
--     ROUND(IFNULL(AVG(rating), 0), 2) AS average,
--     IF(COUNT(rating) > 0,
--         'ACTIVE',
--         'INACTIVE') AS status
-- FROM
--     reviewers
--         LEFT JOIN
--     reviews ON reviewers.id = reviews.reviewer_id
-- GROUP BY first_name , last_name;

-- SELECT 
--     title,
--     rating,
--     CONCAT(first_name, ' ', last_name) AS reviewer
-- FROM
--     reviews
--         INNER JOIN
--     series ON reviews.series_id = series.id
--         INNER JOIN
--     reviewers ON reviews.reviewer_id = reviewers.id;
 
 
 
-- SELECT 
--     title,
--     rating,
--     CONCAT(first_name, ' ', last_name) AS reviewer
-- FROM
--     series
--         INNER JOIN
--     reviews ON reviews.series_id = series.id
--         INNER JOIN
--     reviewers ON reviews.reviewer_id = reviewers.id;
 
 
 
-- SELECT 
--     title,
--     rating,
--     CONCAT(first_name, ' ', last_name) AS reviewer
-- FROM
--     reviewers
--         INNER JOIN
--     reviews ON reviews.reviewer_id = reviewers.id
--         INNER JOIN
--     series ON reviews.series_id = series.id;





