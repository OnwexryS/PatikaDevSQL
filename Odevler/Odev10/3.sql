-- customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki
-- first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

SELECT rental_id, first_name, last_name
FROM customer
RIGHT JOIN rental
ON customer.customer_id = rental.customer_id;