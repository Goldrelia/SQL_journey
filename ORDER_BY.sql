-- What are the customer ids of the first 10 customers who created a payment?
SELECT customer_id FROM payment
-- WHERE amount != 0.00 -- extra info to make sure that payment was not 0
ORDER BY payment_date ASC
LIMIT 10;

-- What are the titles of the 5 shortest (in length of runtime) movies?
SELECT title, length FROM film -- length SQL keyword (but also column name in database), without capitalisation -> name of column
ORDER BY length ASC
LIMIT 5; -- no garentee that there are only 5 movies with 46 min

-- If the previous customer can watch any movie that is 50 min or less in run time, how many options does she have?
SELECT COUNT(title) FROM film
WHERE length <= 50