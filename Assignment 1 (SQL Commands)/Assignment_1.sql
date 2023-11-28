-- 1.Identify the primary keys and foreign keys in maven movies db. Discuss the difference
-- Primary Keys are actor_id, actor_award_id, address_id, advisor_id, category_id, city_id, country_id, customer_id, film_id, actor_id,film_id, film_id, category_id, film_id, inventory_id, investor_id, language_id, payment_id, rental_id, staff_id, store_id
-- Foreign Keys are city_id, country_id, address_id, store_id, language_id, original_language_id, actor_id, film_id, category_id, rental_id, customer_id, staff_id, inventory_id, address_id, manager_staff_id.
-- Difference between primary key and foreign key

-- | FEATURES                    | PRIMARY KEY                                                | FOREIGN KEY                                                                                               |
-- |-----------------------------|------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
-- | **Purpose**                 | Unique identifier for a record in a table.                 | Links a column in one table to the primary key in another table.                                          |
-- | **Uniqueness**              | Must be unique within its own table.                       | Values do not need to be unique within the table but must correspond to the primary key in another table. |
-- | **Null Values**             | Usually cannot be NULL.                                    | Can be NULL, indicating an optional relationship.                                                         |
-- | **Table Relationships**     | Defines uniqueness of records within its own table.        | Establishes a relationship between two tables.                                                            |
-- | **Indexing**                | Creates a unique index automatically.                      | Creating an index on the foreign key column can improve join performance.                                 |
-- | **Example**                 | In a student table, "student_id" could be the primary key. | In a course table, "student_id" could be a foreign key referring to the student table.                    |

-- 2. List all details of actors
SELECT 
    *
FROM
    actor; 
    
-- 3. List all customer information from DB
SELECT 
    *
FROM
    customer;
    
-- 4. List different countries
SELECT 
    country
FROM
    country;
    
-- 5. Display all active customers.
SELECT 
    *
FROM
    customer
WHERE
    active = 1;
    
-- 6. List all rental IDs for customer with ID 1.
SELECT 
    *
FROM
    customer
WHERE
    customer_id = 1;
-- OR
SELECT 
    customer_id, store_id, address_id
FROM
    customer
WHERE
    customer_id = 1;
    
-- 7. Display all the films whose rental duration is greater than 5.
SELECT 
    *
FROM
    film
WHERE
    rental_duration > 5;
    
-- 8. List the total number of films whose replacement cost is greater than $15 and less than $20.
SELECT 
    COUNT(film_id)
FROM
    film
WHERE
    replacement_cost > 15
        AND replacement_cost < 20;
        
-- 9. Display the count of unique first names of actors.
SELECT 
    COUNT(DISTINCT (first_name))
FROM
    actor;
    
-- 10. Display the first 10 records from the customer table.
SELECT 
    *
FROM
    customer
LIMIT 10;

-- 11. Display the first 3 records from the customer table whose first name starts with 'b'.
SELECT 
    *
FROM
    customer
WHERE
    first_name LIKE 'b%'
LIMIT 3;

-- 12. Display the names of first 5 movies which are rated as 'G'
SELECT 
    *
FROM
    film
WHERE
    rating = 'G'
LIMIT 5;

-- 13. Find all customers whose first name starts with 'a'.
SELECT 
    *
FROM
    customer
WHERE
    first_name LIKE 'a%';
    
-- 14. Find all customers whose first name end with 'a'.
SELECT 
    *
FROM
    customer
WHERE
    first_name LIKE '%a';
    
-- 15. Display the list of first 4 cities which start and end with 'a'
SELECT 
    *
FROM
    city
WHERE
    city LIKE 'a%' AND city LIKE '%a'
LIMIT 4;

-- 16. Find all the customers whose first name have "NI" in any position.
SELECT 
    *
FROM
    customer
WHERE
    first_name LIKE '%ni%';
    
-- 17. Find all customers whose first name have "r" in the second position.
SELECT 
    *
FROM
    customer
WHERE
    first_name LIKE '_r%';

-- 18. Find all customers whose first name with "a" and are at least 5 characters in length.
SELECT 
    *
FROM
    customer
WHERE
    first_name LIKE 'a____'; 

-- 19. Find all customers whose first name have "a" and ends with "o".
SELECT 
    *
FROM
    customer
WHERE
    first_name LIKE 'a%'
        AND first_name LIKE '%o';

-- 20. Get the films with pg and pg-13 rating using IN operator.
SELECT 
    *
FROM
    film
WHERE
    rating IN ('pg' , 'pg-13');

-- 21.Get the films with length between 50 to 100 using between operator.
SELECT 
    *
FROM
    film
WHERE
    length BETWEEN 50 AND 100;

-- 22.Get the top 50 actors using limit operator.
SELECT 
    *
FROM
    actor
LIMIT 50;

-- OR

SELECT 
    CONCAT(first_name, ' ', last_name) AS Actor_Name
FROM
    actor; 

-- 23. Get the distinct film ids from inventory table.
SELECT DISTINCT
    film_id
FROM
    inventory;




