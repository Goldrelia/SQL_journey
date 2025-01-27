-- What is the email for the customer with the name of Nancy Thomas?
-- SELECT email FROM customer
-- WHERE first_name = 'Nancy' AND last_name = 'Thomas';

-- Could you give the customer the description for the movie 'Outlaw Hanky'?
-- SELECT description FROM film
-- WHERE title = 'Outlaw Hanky';

-- Can you get the phone numner for the customer who lives at '259 Ipoh Drive'?
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';