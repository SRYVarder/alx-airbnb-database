# Seed Data

This directory contains the SQL script to populate the Airbnb database with sample data after creating the schema.

## Files

seed.sql → Inserts sample data into all tables (users, properties, bookings, reviews, payments, messages).

## How to Run
  ### 1. Create the Database

  First, log in to your MySQL or PostgreSQL server and create the database:

             CREATE DATABASE airbnb_db;

  ### 2. Run the Schema Script

  Navigate to the directory where schema.sql is located and run:

            mysql -u root -p airbnb_db < schema.sql

  ### 3. Run the Seed Script

  After the schema is created, load the sample data:

            mysql -u root -p airbnb_db < seed.sql

  ### 4. Verify Data

You can check inserted records using:

           SELECT * FROM users;
           SELECT * FROM properties;
           SELECT * FROM bookings;
           SELECT * FROM reviews;
           SELECT * FROM payments;
           SELECT * FROM messages;

 # Notes

  UUID() is used for unique IDs (works in MySQL). If using PostgreSQL, replace with gen_random_uuid().

  Passwords are stored as placeholder text (hashed_pw1, etc.). Use real hashing in production.

  Sample data includes:

  Users (guest, hosts, admin)

  Properties (owned by hosts)

  Bookings (guests book properties)

  Reviews (guests review properties)

  Payments (linked to bookings)

  Messages (between users)

