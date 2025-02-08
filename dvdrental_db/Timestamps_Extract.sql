-- During which months did payments occur?
-- Format your answer to return back the full month name
SELECT DISTINCT TO_CHAR(payment_date, 'MONTH') FROM payment;

-- During which months did payments occur?
-- Format your answer to return back the full month name
-- DOW -> get day of week and return as integer
SELECT COUNT(*) FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1; 