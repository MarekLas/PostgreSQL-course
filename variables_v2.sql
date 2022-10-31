CREATE TABLE books
(
	book_id int,
	title varchar(100),
	author varchar(50),
	pages int,
	year_printed int,
	percent_finished decimal(5,2),
	adult_only boolean
);

INSERT INTO books
VALUES
('1', 'Frankenstein', 'Mary Shelly', 289, 2007, 100, FALSE);

INSERT INTO books
VALUES
('2', 'Tales of Terror and Madness', 'Edgar Allan Poe', 188, 2001, 45.33, True);

SELECT 
	*
FROM books;

--DROP TABLE books


