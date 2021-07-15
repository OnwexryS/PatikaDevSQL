# PatikaDev-PostgreSQL

## Tıklayarak Ödevlere Gidebilirsin
<a href='#O1'>Ödev 1:</a> Aşşağıdaki sorgu senaryolarını **dvdrental** örnek veritabanı üzerinden gerçekleştiriniz
* #### 1. **film** tablosunda bulunan **title** ve **description** sütunlarındaki verileri sıralayınız. <a href='#1_1'>(git)</a>
* #### 2. **film** tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük **VE** 75 ten küçük olma koşullarıyla sıralayınız. <a href='#1_2'>(git)</a>
* #### 3. **film** tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 **VE** replacement_cost 12.99 **VEYA** 28.99 olma koşullarıyla sıralayınız. <a href='#1_3'>(git)</a>
* #### 4. **customer** tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir? <a href='#1_4'>(git)</a>
* #### 5. **film** tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız. <a href='#1_5'>(git)</a>
 
 
 
## <p id = 'O1' > **Ödev 1** </p> 
#### <p id = '1_1' > 1. **film** tablosunda bulunan **title** ve **description** sütunlarındaki verileri sıralayınız. </p>
```sql
SELECT title, description FROM film;
```
#### <p id = '1_2' > 2. **film** tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük **VE** 75 ten küçük olma koşullarıyla sıralayınız.</p>
```sql
SELECT * FROM film WHERE length > 60 and length < 75;
```
#### <p id = '1_3' > 3. **film** tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 **VE** replacement_cost 12.99 **VEYA** 28.99 olma koşullarıyla sıralayınız. </p>
```sql
SELECT * FROM film WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);
```
#### <p id = '1_4' > 4. **customer** tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?</p>
```sql
SELECT last_name FROM customer WHERE first_name = 'Mary';
Cevabı : Smith
```
#### <p id = '1_5' > 5. **film** tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.</p>
```sql
SELECT * FROM film WHERE length <= 50 AND (rental_rate != 2.99 AND rental_rate != 4.99);
```