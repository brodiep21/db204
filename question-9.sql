-- Average number of borrowed books by job title
SELECT 
    c.Occupation, -- get client occupation
    ROUND(COUNT(b.BorrowID) / COUNT(DISTINCT c.ClientID), 0) AS AvgBorrowsPerClient
    /* Count total borrows and divide by number of unique clients in each occupation
    rounding to get the avg and creating a columnname Avgborrowsperclient
    set the final value of round to 0 in order for a ceil/floor depending
    on the end value */
FROM Borrower b
JOIN Client c ON b.ClientID = c.ClientID -- link borrow record to client who made it
GROUP BY c.Occupation  -- Group by job title
ORDER BY AvgBorrowsPerClient DESC;  -- Highest averages first