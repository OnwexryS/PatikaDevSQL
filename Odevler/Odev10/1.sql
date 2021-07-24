--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) 
--isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız

SELECT city AS "Şehir", country AS "Ülke"
FROM city
RIGHT JOIN country
ON city.country_id = country.country_id;