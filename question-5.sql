/* Select the nationalities of the 5 least borrowed authors from 2015 to 2017.
The wording leads me to believe the five nationalities with the fewest borrowed
books from 2015-2017. I recommend the wording changed to "Nationalities of
the 5 authors that clients borrowed the least from in 2015 to the end of 2017 */
-- nationality is not distinct since we are returning different authorIDs
SELECT AuthorNationality, BorrowCount
FROM (
	SELECT a.AuthorNationality,     
		COUNT(*) AS BorrowCount    -- times of borrowed books
	FROM Borrower b
	-- Join to Book to get the AuthorID
	JOIN Book bk ON b.BookID = bk.BookID
	JOIN Author a ON bk.AuthorID = a.AuthorID
	-- Filter from 2015 to 2017, 
	WHERE b.BorrowDate >= '2015-01-01' AND b.BorrowDate <= '2017-12-31'
	-- Group by author to count borrows per author
	GROUP BY a.AuthorID
	-- Use ascending to get the least borrowed, then limit the list to 5
	ORDER BY BorrowCount ASC
	LIMIT 5
) AS LeastBorrowed