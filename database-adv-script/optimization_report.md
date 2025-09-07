
## Before optimization:

```sql
SELECT *
FROM Bookings bk
JOIN Users u ON bk.user_id = u.user_id
JOIN Properties pr ON bk.property_id = pr.property_id
LEFT JOIN Payment py ON py.booking_id = bk.booking_id
ORDER BY bk.start_date;

## After Optimization:

 ```sql
 SELECT
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price AS booking_total,
  b.status AS booking_status,
  u.user_id,
  u.first_name,
  u.last_name,
  u.email,
  p.property_id,
  p.name AS property_name,
  p.location AS property_location,
  pay.payment_id,
  pay.amount AS payment_amount,
  pay.payment_date
FROM Bookings b
JOIN Users u ON b.user_id = u.user_id
JOIN Properties p ON b.property_id = p.property_id
LEFT JOIN Payments pay ON pay.booking_id = b.booking_id
ORDER BY b.start_date;
```
