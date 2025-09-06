# Airbnb Clone – Database Schema

## 📌 Overview
This folder contains the SQL schema definition and seed data for the Airbnb clone booking system.  

## Database ERD 
   
  <img width="1362" height="913" alt="ERD" src="https://github.com/user-attachments/assets/740fb6c3-c90c-4a9d-927e-8fc9da34f884" />

## 🏗️ Entities & Attributes
### 1. Users
- Holds: guest, host, and admin details.
- Constraints: `email` unique, `role` ENUM.

### 2. Properties
- Listings created by hosts.
- Linked to `Users (host_id)`.

### 3. Bookings
- Reservations made by users on properties.
- References `Users` and `Properties`.

### 4. Payments
- Tracks booking transactions.
- Linked to `Bookings`.

### 5. Reviews
- User feedback on properties.
- Rating restricted between **1–5**.

### 6. Messages
- Direct communication between users.
- References `Users (sender_id, recipient_id)`.

---

## 🧹 Normalization Process
The schema was normalized in steps:

1. *1NF* – Removed repeating groups, ensured atomic values 
2. *2NF* – Eliminated partial dependencies by ensuring non-key attributes depend on the full primary key 
3. *3NF* – Removed transitive dependencies 

---

## 🗂️ Files
- `Schema.sql` → SQL DDL for schema creation.  
- `seed.sql` → Sample test data to simulate bookings, payments, etc.  
- `erd.sql` → Schema export for ERD visualization tools.  

---

## ⚡ Indexes
Indexes were added for performance:
- **Users** → `email` (unique lookups)
- **Properties** → `host_id`
- **Bookings** → `property_id`, `user_id`
- **Payments** → `booking_id`
- **Reviews** → `property_id`, `user_id`
- **Messages** → `sender_id`, `recipient_id`

📌 Indexes improve **read/query speed**, especially on joins, at the cost of slightly slower writes.

---
