-- We have two staff members, with Staff IDs 1 and 2. We want to give a bonus to the 
-- staff member that handled the most payments. (Most in terms of number of payments processed, not total dollar amount)

-- How many payments did each staff member handle
-- and who gets the bonus?

SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id
ORDER BY SUM(amount); -- do not need but is nice to have


-- What is the average replacement cost per MPAA rating?

SELECT rating, AVG(replacement_cost) FROM film
GROUP BY rating;

-- with round
-- What is the average replacement cost per MPAA rating?

SELECT rating, ROUND(AVG(replacement_cost), 2) FROM film
GROUP BY rating;

-- What are the customer ids of the top 5 customers by total spend?
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;