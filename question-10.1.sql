/* Create a VIEW and display the titles that were borrowed 
by at least 20% of clients */
CREATE VIEW BooksBorrowedBy20Percent AS
-- Select the book title and the number of distinct clients who borrowed it
SELECT 
    bk.BookTitle,  -- Display the title of the book
    COUNT(DISTINCT b.ClientID) AS DistinctBorrowers  
    -- Count how many unique clients borrowed the book and create a column
FROM Borrower b
-- Join the Book table to get book titles using BookID
JOIN Book bk ON b.BookID = bk.BookID
-- Group the data by each book
GROUP BY bk.BookID, bk.BookTitle
-- Keep only books that were borrowed by at least 16 unique clients
HAVING COUNT(DISTINCT b.ClientID) >= 16;
