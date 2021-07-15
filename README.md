# PatikaDev-PostgreSQL

## Tıklayarak Ödevlere Gidebilirsin
<a href='#O1'>Ödev 1:</a> Aşşağıdaki sorgu senaryolarını **dvdrental** örnek veritabanı üzerinden gerçekleştiriniz
* #### 1. **film** tablosunda bulunan **title** ve **description** sütunlarındaki verileri sıralayınız. <a href='#1_1'>(git)</a>
* #### 2. **film** tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük **VE** 75 ten küçük olma koşullarıyla sıralayınız. <a href='#1_2'>(git)</a>
* #### 3. **film** tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 **VE** replacement_cost 12.99 **VEYA** 28.99 olma koşullarıyla sıralayınız. <a href='#1_3'>(git)</a>
* #### 4. **customer** tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir? <a href='#1_4'>(git)</a>
* #### 5. **film** tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız. <a href='#1_5'>(git)</a>


<a href='#O2'>Ödev 2:</a> Aşşağıdaki sorgu senaryolarını **dvdrental** örnek veritabanı üzerinden gerçekleştiriniz
 * #### 1. **film** tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.) <a href='#2_1'>(git)</a>
 * #### 2. **actor** tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması <a href='#2_2'>(git)</a>
 * #### 3. **film** tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 **VE** replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. (IN operatörünü kullanınız.) <a href='#2_3'>(git)</a>
 
 



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





## <p id = 'O2' > **Ödev 2** </p>
#### <p id = '2_1' > 1. **film** tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)</p>
```sql
SELECT * FROM film where replacement_cost BETWEEN 12.99 AND 16.99;
```
#### <p id = '2_2' > 2. **actor** tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması</p>
```sql
SELECT first_name, last_name FROM actor WHERE first_name IN ('Penelope', 'Nick', 'Ed')
```

#### <p id = '2_3' > 3. **film** tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 **VE** replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. (IN operatörünü kullanınız.)</p>
```sql
SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99)
```