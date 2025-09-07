# Write Complex Queries with Joins
  Documentation on Mastering SQL joins by writing complex queries using different types of joins.
## Types of Complex Queries:

### 🧩 Joins: 
Combine rows from two or more tables based on related columns.

          Inner Join: Retrieves records with matching values in both tables.
          
          Left Join: Retrieves all records from the left table and matching records from the right table.
          
          Right Join: Retrieves all records from the right table and matching records from the left table.
          
          Full Outer Join: Retrieves records when there is a match in either table.
          
### 🔁 Subqueries: 

A query nested within another SQL query.

          Correlated Subquery: A subquery that references columns from the outer query.
          
          Non-Correlated Subquery: A subquery that runs independently of the outer query.
          
### 📊 Aggregations: 

Use functions like COUNT, SUM, AVG, MAX, and MIN to perform calculations on data sets.

          Window Functions: Perform calculations across a set of table rows related to the current row, such as ROW_NUMBER, RANK, and PARTITION BY.

          
## Task instructions

   1. Write a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.
   2. Write a query using aLEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.
   3. Write a query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.
   4. Write a query to find all properties where the average rating is greater than 4.0 using a subquery.
   5. Write a correlated subquery to find users who have made more than 3 bookings.
   6. Write a query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.
   7. Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.
   8. Identify high-usage columns in your User, Booking, and Property tables (e.g., columns used in WHERE, JOIN, ORDER BY clauses).
   9. Write SQL CREATE INDEX commands to create appropriate indexes for those columns and save them on database_index.sql
  10. Measure the query performance before and after adding indexes using EXPLAIN or ANALYZE.
  11. Write an initial query that retrieves all bookings along with the user details, property details, and payment details and save it on perfomance.sql
  12. Analyze the query’s performance using EXPLAIN and identify any inefficiencies.
  13. Refactor the query to reduce execution time, such as reducing unnecessary joins or using indexing.
  14. Assume the Booking table is large and query performance is slow. Implement partitioning on the Booking table based on the start_date column. Save the query in a file         partitioning.sql
  15. Test the performance of queries on the partitioned table (e.g., fetching bookings by date range).
  16. Write a brief report on the improvements you observed.
  17. Use SQL commands like SHOW PROFILE or EXPLAIN ANALYZE to monitor the performance of a few of your frequently used queries.
  18. Identify any bottlenecks and suggest changes (e.g., new indexes, schema adjustments).
  19. Implement the changes and report the improvements.
