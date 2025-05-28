/* First and last names of clients that borrowed books in March 2018.
no need to have the same client name twice. Set distinct for only 1 client if they have 
borrowed */
SELECT DISTINCT 
c.ClientFirstName AS FirstName,
c.ClientLastName AS LastName
FROM Client c
-- join each table to filter by borrow date. Then filter by year and month
JOIN Borrower b ON c.ClientID = b.ClientID
WHERE b.BorrowDate >= '2018-03-01' AND b.BorrowDate < '2018-04-01';
