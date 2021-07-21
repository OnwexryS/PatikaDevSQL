-- film tablosunda bulunan filmlerden kaçtanesi 'C' karekteri ile başlar?
SELECT COUNT(title) FROM film
WHERE title LIKE 'C%';