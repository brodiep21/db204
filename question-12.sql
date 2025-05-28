-- Average number of borrows by age
SELECT 
    YEAR(CURDATE()) - c.ClientDOB AS Age, 
    -- Calculate client age based on current year
    ROUND(COUNT(b.BorrowID) / COUNT(DISTINCT c.ClientID), 0) AS AvgBorrows  
    -- Total borrows / unique clients of that age, Rounded for clean numbers
FROM Client c
JOIN Borrower b ON c.ClientID = b.ClientID 
-- Join to get borrow records for each client
GROUP BY Age -- Group by calculated age
ORDER BY Age; -- Order results by age ascending