-- Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE rentals_may AS
SELECT *
FROM rental
WHERE MONTH(rental_date) = 5;

-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO rentals_may
SELECT *
FROM rental
WHERE MONTH(rental_date) = 5;

SELECT * FROM rentals_may;

-- Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE rentals_june AS
SELECT *
FROM rental
WHERE MONTH(rental_date) = 6;


-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June
INSERT INTO rentals_june
SELECT *
FROM rental
WHERE MONTH(rental_date) = 6;

SELECT * FROM rentals_june;

-- Check the number of rentals for each customer for May
SELECT customer_id, COUNT(*) AS may_rental_count
FROM rentals_may
GROUP BY customer_id;

-- Check the number of rentals for each customer for June
SELECT customer_id, COUNT(*) AS june_rental_count
FROM rentals_june
GROUP BY customer_id;

