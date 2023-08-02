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