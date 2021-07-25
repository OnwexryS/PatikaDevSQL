-- payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT (
	SELECT COUNT(*)
	FROM payment
	WHERE payment.customer_id = customer.customer_id
) AS "Count of purchases", *
FROM customer
ORDER BY (
	SELECT COUNT(*) 
	FROM payment 
	WHERE payment.customer_id = customer.customer_id
) DESC;
