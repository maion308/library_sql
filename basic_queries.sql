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

-- Get all books published before 1989

-- Get just the title of all books.

-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)

-- Add yourself as an author

-- Add two books that you'd like to write (you can hard-code your id as the author id)

-- Update one of your books to have a new title

-- Delete your books

-- Delete your author entry
