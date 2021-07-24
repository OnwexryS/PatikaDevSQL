--id sütununa göre değiştirme işlemi (1. işlem) 
--id 1 i tablodan siler

DELETE FROM employee
WHERE id = 1;



--name sütununa göre değiştirme işlemi (2. işlem)
--Adı 15 harf olan herkesi listeden siler

DELETE FROM employee
WHERE name LIKE '_______________';




--birthday sütununa göre değiştirme işlemi (3. işlem)
--doğum günü 19 ocak 1998 olan kişileri siler


DELETE FROM employee
WHERE birthday = '1998-01-19';



--email sütununa göre değiştirme işlemi (4. işlem)
--Senaryomuza göre .cz ile biten maillerin hepsi 
--artık geçersizdir ve buna sahip veriler silinecektir

DELETE FROM employee
WHERE email LIKE '%.cz';



--Birden fazla sütuna göre kıyaslama işlemi (5. işlem)
--Senaryomuza göre id si 100 den küçük ve ilk adı 'Mel' olan kişiler silinecektir
DELETE FROM employee
WHERE id < 100 AND name LIKE 'Mel%';

