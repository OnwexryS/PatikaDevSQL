-- city tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?
SELECT COUNT(*) FROM country WHERE country ILIKE '%r';