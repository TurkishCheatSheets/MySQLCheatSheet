İçindekiler
===========

<hr>

  * [MySQL Komutlarına Giriş](#mysql-komutlarına-giriş)
  * [Veritabanı ile bağlantı kurma](#veritabanı-ile-bağlantı-kurma)
    * [Mevcut Veritabanlarını Listeleme](#mevcut-veritabanlarını-listeleme)
    * [Veritabanı Oluşturma](#veritabanı-oluşturma)
    * [Oluşturulan Veritabanını Kullanma](#oluşturulan-veritabanını-kullanma)
    * [Tablo Oluşturma](#tablo-oluşturma)
    * [Tabloları Gösterme](#tabloları-gösterme)
    * [Tablo Detaylandırma](#tablo-detaylandırma)
    * [Tabloya Veri Ekleme](#tabloya-veri-ekleme)
    * [Tabloya kolon Ekleme](#tabloya-kolon-ekleme)
  * [SQL İfadeleri](#sql-İfadeleri)
    * [Tablodaki Kayıtları Gösterme](#tablodaki-kayıtları-gösterme)
    * [Tablodaki Kayıtların Sayısını Gösterme](#tablodaki-kayıtların-sayısını-gösterme)
    * [Tablodaki Kayıtları Sayma ve gruplandırılmış kayıtları seçme](#tablodaki-kayıtları-sayma-ve-gruplandırılmış-kayıtları-seçme)
    * [İçeren kayıtları getir](#İçeren-kayıtları-getir)
    * [[deger] ile başlayanları getir](#deger-ile-başlayanları-getir)
    * [deg ile başlayan ve er ile bitenleri getir](#deg-ile-başlayan-ve-er-ile-bitenleri-getir)
    * [Bir Aralık Seçme](#bir-aralık-seçme)
    * [Özel Sırayla ve Limitli Bir Şekilde Seçim](#Özel-sırayla-ve-limitli-bir-Şekilde-seçim)
    * [Kayıt Güncelleme](#kayıt-güncelleme)
    * [Kayıt Silme](#kayıt-silme)
    * [Tablonun kolonunu silme](#tablonun-kolonunu-silme)
    * [Tablo silme](#tablo-silme)
    * [Veritabanı Silme](#veritabanı-silme)
    * [Özel Kolon isimleri tanımlama](#Özel-kolon-isimleri-tanımlama)
    * [Veritabanının Yedeğini Alma](#veritabanının-yedeğini-alma)
    * [Veritabanının Yedeğini Yükleme](#veritabanının-yedeğini-yükleme)
    * [Oturumdan çıkış](#oturumdan-çıkış)
  * [Matematiksel Fonksiyonlar](#matematiksel-fonksiyonlar)
    * [Yineleme Olmadan Seçim](#yineleme-olmadan-seçim)
    * [Kayıtların Toplam Sayısını Hesaplama](#kayıtların-toplam-sayısını-hesaplama)
    * [Toplam [sütun] sayısını alma ve grublama [ara kolonlu]](#toplam-sütun-sayısını-alma-ve-grublama-ara-kolonlu)
    * [Kolondaki en büyük değer](#kolondaki-en-büyük-değer)
    * [Kolondaki en küçük değer](#kolondaki-en-küçük-değer)
    * [Kolon Ortalaması](#kolon-ortalaması)
    * [Yuvarlanmış ortalama değer ile gruplama](#yuvarlanmış-ortalama-değer-ile-gruplama)
  * [Kullanıcı Komutları](#kullanıcı-komutları)
    * [Kullanıcı Oluşturma](#kullanıcı-oluşturma)
    * [Kullanıcı Yetkilendirme](#kullanıcı-yetkilendirme)

<hr>

MySQL Komutlarına Giriş
========

MySQL tarafında kullanılan temel SQL komutlarını baz alınarak oluşturulmuştur.Genel olarak kullanılan komutları içerir.

<hr>

#Veritabanı ile bağlantı kurma

Local sunucuda kurulu olan MySQL komut satırı aracılığı ile bağlanabilmek için aşağıdaki komutu kullanmanız yeterlidir.

```mysql -u root -h 127.0.0.1```

##Mevcut Veritabanlarını Listeleme

Aşağıdaki komut aracılığı ile veritabanındaki mevcut veritabalarını listeleyebilirsiniz.

```SHOW DATABASES;```

##Veritabanı Oluşturma

Aşağıdaki komut aracılığı ile istediğiniz bir isim ile veritabanı oluşturabilirsiniz.

```CREATE DATABASE [veritabanıadı];```

##Oluşturulan Veritabanını Kullanma

Aşağıdaki komut aracılığı ile oluşturulan veritabanı içerisinde istediğiniz komutları kullanma imkanı tanınır.

```USE [veritabanıadı];```

##Tablo Oluşturma

Aşağıdaki komutu kullanarak veritabanı içerisinde tablo oluşturabilirsiniz.

``` CREATE TABLE [tabloadı] ([kolon] VARCHAR(120), [birsonrakikolon] DATETIME);```

##Tabloları Gösterme

Veritabanı içerisinde oluştruduğunuz veya varolan tabloları göstermeye yarar.

```SHOW TABLES;```

##Tablo Detaylandırma

Veritabanı içerisindeki tabloları ve bu tablolara ait olan değerlerin tanımlamalarını göstermektedir.

```DESCRIBE [tabloadı];```

##Tabloya Veri Ekleme

Veritabanı içerisinde bulunan herhangi bir tabloya veri girişine imkan tanır.

```INSERT INTO [tabloadı] ([kolon], [birsonrakikolon]) VALUES ('[deger1]', [deger2]');```

##Tabloya kolon Ekleme

Veritabanı içerisinde bulunan ve seçtiğiniz tabloya kolon eklenilmesine imkan verir.

```ALTER TABLE [tabloadı] ADD COLUMN [kolon] VARCHAR(120);```

Veritabanı içerisinde benzersiz kimlikli ve otomatik artan kolonlar oluşturmanıza imkan tanır.

```ALTER TABLE [table] ADD COLUMN [column] int NOT NULL AUTO_INCREMENT PRIMARY KEY;```

#SQL İfadeleri

<hr>

##Tablodaki Kayıtları Gösterme

Veritabanı içerisinde bulunan tablolar içerisindeki kayıtları ekrana getirir.

```SELECT * FROM [tabloadı];```

Veritabanında bulunan tablolar içerisinde ki kayıtları parça parça ekrana getirirmenize olanak sağlar

```SELECT [kolon], [birsonrakikolon] FROM [tabloadı];```

##Tablodaki Kayıtların Sayısını Gösterme

Tablo içerisinde belirtilen kolona ait kaç adet kayıt olduğunu gösterir

```SELECT COUNT([kolon]) FROM [tabloadı];```

##Tablodaki Kayıtları Sayma ve gruplandırılmış kayıtları seçme

Kayıtları sayar ve gruplandırılmış bir şekilde kayıtları gösterir.

```SELECT *, (SELECT COUNT([kolon]) FROM [tabloadı]) AS count FROM [tabloadı] GROUP BY [kolon];```

##İçeren kayıtları getir

```SELECT * FROM [tabloadı] WHERE [kolon] LIKE '%[deger]%';```

##[deger] ile başlayanları getir

```SELECT * FROM [tabloadı] WHERE [kolon] LIKE '[deger]%';```

##deg ile başlayan ve er ile bitenleri getir

```SELECT * FROM [tabloadı] WHERE [kolon] LIKE '[deg_er]';```

##Bir Aralık Seçme

```SELECT * FROM [tabloadı] WHERE [kolon] BETWEEN [deger1] and [deger2];```

##Özel Sırayla ve Limitli Bir Şekilde Seçim

```SELECT * FROM [tabloadı] WHERE [kolon] ORDER BY [kolon] ASC LIMIT [deger];```

##Kayıt Güncelleme

```UPDATE [tabloadı] SET [kolon] = '[guncellenencek-deger]' WHERE [kolon] = [deger];```

##Kayıt Silme

```DELETE FROM [tabloadı] WHERE [kolon] = [deger];```

##Tablonun kolonunu silme

```ALTER TABLE [tabloadı] DROP COLUMN [kolon];```

##Tablo silme

```DROP TABLE [tabloadı];```

##Veritabanı Silme

```DROP DATABASE [veritabanıadı];```

##Özel Kolon isimleri tanımlama

```SELECT [kolon] AS [özel-kolon-adı] FROM [tabloadı];```

##Veritabanının Yedeğini Alma

```mysqldump -u [kullanıcıadı] -p [veritabanıadı] > yedekadi.sql```

##Veritabanının Yedeğini Yükleme

```mysql -u [kullanıcıadı] -p -h localhost [veritabanıadı] < yedekadi.sql```

##Oturumdan çıkış

```exit;```

#Matematiksel Fonksiyonlar

<hr>

##Yineleme Olmadan Seçim

```SELECT distinct name, email, acception FROM owners WHERE acception = 1 AND date >= 2015-01-01 00:00:00```

##Kayıtların Toplam Sayısını Hesaplama

```SELECT SUM([kolon]) FROM [tabloadı];```

##Toplam [sütun] sayısını alma ve grublama [ara kolonlu]

```SELECT [arakolon], SUM([kolon]) FROM [tablo] GROUP BY [arakolon];```

##Kolondaki en büyük değer

```SELECT MAX([kolon]) FROM [tabloadı];```

##Kolondaki en küçük değer

```SELECT MIN([kolon]) FROM [tabloadı];```

##Kolon Ortalaması

```SELECT AVG([kolon]) FROM [tabloadı];```

##Yuvarlanmış ortalama değer ile gruplama

```SELECT [carakolon], ROUND(AVG([kolon]), 2) FROM [tabloadı] GROUP BY [arakolon];```

#Kullanıcı Komutları

<hr>

##Kullanıcı Oluşturma

```CREATE USER 'kullanıcı_adı'@'localhost' IDENTIFIED BY 'şifresi';```

##Kullanıcı Yetkilendirme

```GRANT ALL PRIVILEGES ON * . * TO 'kullanıcı_adi'@'localhost';```

veya

```GRANT ALL ON veritabanı_adı.* TO 'kullanıcı_adı'@'localhost';```
