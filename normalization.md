 # Normalization of Database Schema (Airbnb Clone)
 
 This documents shows a Review on schema to identify any potential redundancies or violations of normalization principles.

# Normalization Review of the Schema
  ## 1. First Normal Form (1NF)

     ✔ All attributes are atomic (no repeating groups or arrays).

     ✔ Primary keys uniquely identify each row.

     Minor issue noted that, column definitions include annotations inside column names (e.g., `user_id: Primary Key, UUID, Indexed`).

     a proposed fix on, Column names should be clean (user_id), while constraints should be declared separately.

 ## 2. Second Normal Form (2NF)

    ✔ No partial dependencies (since all PKs are single-column UUIDs).

    ✔ All non-key attributes depend fully on the primary key.

    Example: In Property, attributes like name, description, and pricepernight depend entirely on property_id.

 ## 3. Third Normal Form (3NF)

    ✔ No transitive dependencies (non-key attributes don’t depend on other non-key attributes).

 ## Issues spotted and there fix :

    User Table – role ENUM

        Mixing roles in the same table makes the design rigid.

        Fix → Move roles to a separate Role table (role_id, role_name) and link User.role_id → Role.role_id.

    Property Table – location

        Storing location as a single VARCHAR might cause duplication (e.g., “Nairobi, Kenya” stored many times).

        Fix → Create a Location table with location_id, city, country to avoid redundancy.

    Payment Table – payment_method ENUM

        ENUM is not flexible if new methods are added.

        Fix → Use a PaymentMethod table (method_id, method_name) and link to Payment.

    Booking Table – status ENUM

         Same issue as above; ENUM is restrictive.

         Fix → Replace with a BookingStatus table (status_id, status_name).
