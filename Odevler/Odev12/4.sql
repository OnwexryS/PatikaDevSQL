-- payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.


SELECT COUNT(*) AS "Sipariş Sayısı", customer.first_name, customer.last_name, customer.customer_id FROM customer
JOIN payment ON customer.customer_id = payment.customer_id

GROUP BY customer.first_name, customer.last_name, customer.customer_id
ORDER BY COUNT(*) DESC;





--SELECT (
--	SELECT COUNT(*)
--	FROM payment
--	WHERE payment.customer_id = customer.customer_id
--) AS "Count of purchases", *
--FROM customer
--ORDER BY (
--	SELECT COUNT(*) 
--	FROM payment 
--	WHERE payment.customer_id = customer.customer_id
--) DESC;
