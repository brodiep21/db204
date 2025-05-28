-- The top month of borrows in 2017
SELECT 
    MONTH(BorrowDate) AS Month, -- Get the month number (1–12), set column name
    COUNT(*) AS TotalBorrows /* Count how many borrows 
    happened that month and set column name */ 
FROM Borrower
WHERE YEAR(BorrowDate) = 2017 -- Only include records from the year 2017
GROUP BY MONTH(BorrowDate) -- Group by each month to get totals
ORDER BY TotalBorrows DESC -- Order so highest number of borrows is first
LIMIT 1;  -- Only insert the top month