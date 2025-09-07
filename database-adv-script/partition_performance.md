## Before Partitioning

``` sql
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE start_date BETWEEN '2025-01-01' AND '2025-6-30';
```

## After Partitioning

``` sql
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE start_date BETWEEN '2025-01-01' AND '2025-6-30'';
```
