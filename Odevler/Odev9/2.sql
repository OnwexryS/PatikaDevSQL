-- customer tablosu ile payment tablosunda bulunan payment_id ile 
-- customer tablosundaki first_name ve last_name isimlerini birlikte 
-- görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT payment_id, first_name, last_name
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id;