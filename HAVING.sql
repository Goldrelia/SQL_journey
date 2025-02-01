-- What customer_ids are eligible for platinum status (40 or more transaction payments)?

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40

-- What are the customer ids of customers who have spent more then $100 in payment transactions
-- with our staff_id member 2?

SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100