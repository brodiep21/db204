-- 2. List first name, last name, age, and occupation of all clients
SELECT
ClientFirstName AS FirstName,
ClientLastName AS LastName,
YEAR(CURDATE()) - ClientDoB AS Age,
Occupation
FROM Client;