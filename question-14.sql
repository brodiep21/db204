-- First and last names of authors that wrote books in more than one genre
SELECT 
    a.AuthorFirstName, 
    a.AuthorLastName  -- get first and last name
FROM Author a
-- Join to Book table to access genres
JOIN Book b ON a.AuthorID = b.AuthorID
-- Grouping by each author to count unique genres
GROUP BY a.AuthorID, a.AuthorFirstName, a.AuthorLastName
HAVING COUNT(DISTINCT b.Genre) > 1;  
-- Only keep authors with more than one unique genre