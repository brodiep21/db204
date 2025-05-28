/* 4. Top 5 most-borrowed authors in 2017 (by number of times their books were
borrowed) */
SELECT a.AuthorFirstName,
       a.AuthorLastName,
       COUNT(*) AS BorrowCount -- count number of times books are borrowed
FROM Borrower b
-- Join with Book to connect Borrower to Book data
JOIN Book bk ON b.BookID = bk.BookID
JOIN Author a ON bk.AuthorID = a.AuthorID
-- Filter borrow records to include only those in the year 2017
WHERE b.BorrowDate >= '2017-01-01' AND b.BorrowDate < '2018-01-01'
GROUP BY a.AuthorID
/* Sort by borrow count in descending order to get the 
most borrowed authors first */
ORDER BY BorrowCount DESC
-- Top 5 authors only
LIMIT 5;
