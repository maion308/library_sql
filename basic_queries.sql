-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns. Please copy and paste your queries into this file.

-- Get all information about all authors
SELECT * FROM authors;

-- Get just the name and birth year of all authors
Select name, birth_year From authors;

-- Get all authors born in the 20th century or later
SELECT * FROM authors 
WHERE birth_year > 1899 
AND birth_year < 2000;

-- Get all authors born in the USA
SELECT * FROM authors
WHERE nationality = 'United States of America';

-- Get all books published on 1985
SELECT * FROM books
WHERE publication_date = 1985;

-- Get all books published before 1989
SELECT * FROM books
WHERE publication_date < 1985;

-- Get just the title of all books.
SELECT title FROM books;

-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
  SELECT publication_date FROM books
  WHERE title = 'A Dance with Dragons';

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT * FROM books WHERE title LIKE '%the%';

-- Add yourself as an author
INSERT INTO authors(name, nationality, birth_year) VALUES ('Michael Ion', 'United States of America', 1492);


-- This query below (line 43) was used to find the latest author_id so i can hard code my author_id in order
-- SELECT author_id FROM books ORDER BY AUTHOR_ID DESC;

-- Add two books that you'd like to write (you can hard-code your id as the author id)

INSERT INTO books(title, publication_date, author_id) VALUES ('To SQL or NOSQL?', 1942, 9);
INSERT INTO books(title, publication_date, author_id) VALUES ('Learn POSTGRESQL The Hard Way', 1917, 9);

-- Update one of your books to have a new title

UPDATE books
SET title = 'SQL afterall!'
WHERE title = 'To SQL or NOSQL?';

SELECT title, name FROM books WHERE author_id = 9;

-- Delete your books

DELETE FROM books WHERE author_id = 9;

-- Delete your author entry

DELETE FROM authors WHERE name = 'Michael Ion';
