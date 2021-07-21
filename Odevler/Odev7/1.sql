-- film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating, COUNT(*) FROM film
GROUP BY rating;