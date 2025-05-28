-- The book that was most borrowed during the years 2015-2017
SELECT 
    bk.BookTitle,
    COUNT(*) AS BorrowCount -- get the counts
FROM Borrower b
JOIN Book bk ON b.BookID = bk.BookID  -- Join borrower table with book to get the title
WHERE b.BorrowDate BETWEEN '2015-01-01' AND '2017-12-31' -- limit dates
GROUP BY bk.BookID, bk.BookTitle -- indexing helps scan and sort with the index_borrower_bookid
ORDER BY BorrowCount DESC -- Start with highest count and pick #1 only
LIMIT 1;