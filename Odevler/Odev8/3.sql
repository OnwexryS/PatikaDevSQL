--id sütununa göre değiştirme işlemi (1. işlem) 
--id 1 e ödevi yapan öğrencinin bilgilerini yazar

UPDATE employee
SET name = 'Furkan Ünal',
	birthday = '1998-01-19',
	email = 'furkanaliuna4@gmail.com'
WHERE id = 1;

--name sütununa göre değiştirme işlemi (2. işlem)
--Adı te ile başlayan kişilerin verilerini Nikola Tesla olarak yeniden yazar

UPDATE employee
SET name = 'Nikola Tesla',
    birthday = '1856-07-10',
    email = 'info@nikolatesla.com'
WHERE name ILIKE 'Te%'



--birthday sütununa göre değiştirme işlemi (3. işlem)
--doğum günü 19 ocak 1998 olan verilere ödevi yapan öğrencinin bilgilerini insert eder


UPDATE employee
SET name = 'Furkan Ünal3',
    email = 'furkanaliuna4@gmail.com',
WHERE birthday = '1998-01-19'

--email sütununa göre değiştirme işlemi (4. işlem)
--Senaryomuza göre .org ile biten maillerin hepsi .com a taşınacaktır

UPDATE employee
SET email = REPLACE(email, '.org', '.com')
WHERE email LIKE '%.org';

--Birden fazla sütuna göre kıyaslama işlemi (5. işlem)
--Senaryomuza göre doğum tarihi iki tarih arasında kalan,
--ve adı E ile başlayan kişilerin adına * eklenecektir

UPDATE employee
SET name = CONCAT(name, ' *')
WHERE (name LIKE 'E%') AND (birthday BETWEEN '1990-01-01' AND '1992-01-01');
