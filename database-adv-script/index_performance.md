# Indexes perfomances

## High-usage columns:
Focus on columns frequently used in:

    WHERE clauses

    JOIN conditions

    ORDER BY statements

## Users table:
  1. user_id: primary key, used in JOIN.
  2. email: used in WHERE clauses.

## Bookings table:
  1. booking_id: primary key, used with JOIN.
  2. user_id: foreign key, used mostly in JOINs with Users.
  3. property_id: foreign key, used mostly in JOINs with Properties.

## Properties table:
  1. property_id: primary key used in JOIN.
  2. host_id: foreign key, used in JOINs with the Users table.

-- Index on users.user_id for JOINs
CREATE INDEX idx_users_user_id ON users(user_id);

-- Index on bookings.user_id for JOINs
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id for JOINs
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on bookings.booking_date for filtering/sorting
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);

-- Index on properties.location for filtering queries
CREATE INDEX idx_properties_location ON properties(location);

EXPLAIN ANALYZE
SELECT * FROM Bookings
WHERE user_id = '19188817268'
