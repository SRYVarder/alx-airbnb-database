SELECT 
    users.user_id, users.first_name, users.last_name,
    COUNT(bookings.booking_id) AS total_bookings
FROM users
LEFT JOIN bookings
ON 
    users.user_id = bookings.user_id
  
GROUP BY 
    users.user_id, users.first_name, users.last_name
ORDER BY 
    total_bookings DESC;

--- Total bookings per user

SELECT 
    property_id, property_name,
  
    COUNT(booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(booking_id) DESC) AS booking_rank,
    ROW_NUMBER() OVER (ORDER BY COUNT(booking_id) DESC) AS booking_row_number

FROM bookings
JOIN properties
    ON Properties.property_id = Bookings.property_id
GROUP BY 
    property_id, property_name
ORDER BY 
    booking_rank;

--- Ranking properties by total bookings
