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
