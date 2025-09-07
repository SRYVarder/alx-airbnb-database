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
