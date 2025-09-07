--INNER JOIN
SELECT *
FROM Users
INNER JOIN Bookings
    ON Users.user_id = Bookings.user_id;

--- Retrieves records with matching values in both tables.

-- LEFT JOIN 
SELECT *
FROM Properties
LEFT JOIN Reviews
    ON Properties.property_id = Reviews.property_id
ORDER BY Properties.property_id DESC;

--- Retrieves all records from the left table and matching records from the right table

-- FULL OUTER JOIN 
SELECT * 
FROM Users
FULL OUTER JOIN Bookings
    ON Users.user_id = Bookings.user_id;

--- Retrieves records when there is a match in either table.
