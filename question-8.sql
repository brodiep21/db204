-- Top 5 occupations that borrowed the most in 2016
SELECT 
    c.Occupation, -- get occupation from Client
    COUNT(*) AS BorrowCount  -- Count how many books each occupation borrowed
FROM Borrower b
JOIN Client c ON b.ClientID = c.ClientID -- join clients to collect occupation/borrow count
WHERE b.BorrowDate BETWEEN '2016-01-01' AND '2016-12-31'  -- Only consider borrows from 2016
GROUP BY c.Occupation  -- Aggregate by occupation
ORDER BY BorrowCount DESC  -- Get the highest borrowing occupations first
LIMIT 5;  -- Return top 5