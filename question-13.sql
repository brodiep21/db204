-- The oldest and the youngest clients of the library
(
    SELECT 
        ClientFirstName, 
        ClientLastName, 
        ClientDOB,
        YEAR(CURDATE()) - ClientDOB AS age, -- put age in a column
        'Youngest' AS Label -- get name and label youngest age
    FROM Client
    ORDER BY ClientDOB DESC  -- Most recent birth date = youngest
    LIMIT 1
)
UNION ALL -- combine both results into a table
(
    SELECT 
        ClientFirstName, 
        ClientLastName, 
        ClientDOB,
        YEAR(CURDATE()) - ClientDOB AS age, -- put their age in a column
        'Oldest' AS Label -- get name and label oldest
    FROM Client
    ORDER BY ClientDOB ASC  -- Earliest birth date = oldest
    LIMIT 1
);