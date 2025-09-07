
SELECT *
FROM Users
WHERE (
    SELECT COUNT(*)
    FROM Bookings
    WHERE Bookings.user_id = Users.user_id
) > 3;
--- correlated subquery to find users who have made more than 3 bookings.

SELECT *
FROM Properties
WHERE property_id IN (
    SELECT property_id
    FROM Reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

--- a query to find all properties where the average rating is greater than 4.0 using a subquery
