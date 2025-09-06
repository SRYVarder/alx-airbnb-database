
-- =========================
-- Lookup Tables Seed Data
-- =========================

INSERT INTO roles (role_name) VALUES
('guest'),
('host'),
('admin');

INSERT INTO booking_status (status_name) VALUES
('pending'),
('confirmed'),
('canceled');

INSERT INTO payment_methods (method_name) VALUES
('credit_card'),
('paypal'),
('stripe');

-- =========================
-- Users Seed Data
-- =========================

INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role_id)
VALUES
(UUID(), 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '1234567890', 1), -- guest
(UUID(), 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '9876543210', 2), -- host
(UUID(), 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw3', '5551234567', 2), -- host
(UUID(), 'Admin', 'User', 'admin@example.com', 'hashed_admin', NULL, 3); -- admin

-- =========================
-- Properties Seed Data
-- =========================

INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
(UUID(), (SELECT user_id FROM users WHERE email='bob@example.com'),
 'Cozy Apartment', 'A nice apartment in the city center.', 'Nairobi, Kenya', 50.00),
(UUID(), (SELECT user_id FROM users WHERE email='charlie@example.com'),
 'Beach House', 'A lovely beach house with ocean views.', 'Mombasa, Kenya', 120.00);

-- =========================
-- Bookings Seed Data
-- =========================

INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status_id)
VALUES
(UUID(),
 (SELECT property_id FROM properties WHERE name='Cozy Apartment'),
 (SELECT user_id FROM users WHERE email='alice@example.com'),
 '2025-09-10', '2025-09-15', 250.00, 2);

-- =========================
-- Reviews Seed Data
-- =========================

INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
(UUID(),
 (SELECT property_id FROM properties WHERE name='Cozy Apartment'),
 (SELECT user_id FROM users WHERE email='alice@example.com'),
 5, 'Amazing stay! The host was very friendly.');

-- =========================
-- Payments Seed Data
-- =========================

INSERT INTO payments (payment_id, booking_id, amount, method_id)
VALUES
(UUID(),
 (SELECT booking_id FROM bookings LIMIT 1),
 250.00,
 (SELECT method_id FROM payment_methods WHERE method_name='credit_card'));

-- =========================
-- Messages Seed Data
-- =========================

INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
(UUID(),
 (SELECT user_id FROM users WHERE email='alice@example.com'),
 (SELECT user_id FROM users WHERE email='bob@example.com'),
 'Hi Bob, I just booked your apartment. Looking forward to my stay!'),
(UUID(),
 (SELECT user_id FROM users WHERE email='bob@example.com'),
 (SELECT user_id FROM users WHERE email='alice@example.com'),
 'Thanks Alice! Looking forward to hosting you.');
