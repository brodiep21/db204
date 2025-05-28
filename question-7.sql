-- Top borrowed genres for client born in years 1970-1980
-- Get the most borrowed genres for clients born between 1970 and 1980
SELECT bk.Genre, COUNT(*) AS BorrowCount
FROM Client c
-- Join Borrower to get borrowing records
JOIN Borrower b ON c.ClientID = b.ClientID
-- Join Book to get genre information
JOIN Book bk ON b.BookID = bk.BookID
-- Filter clients born from 1970 to 1980
WHERE c.ClientDOB >= 1970 AND c.ClientDOB <= 1980
GROUP BY bk.Genre -- groups rows for the Count(*)
ORDER BY BorrowCount DESC; -- get highest numbers first