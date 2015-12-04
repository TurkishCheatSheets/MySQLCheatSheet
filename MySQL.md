MySQL Komutlarına Giriş
========

MySQL tarafında kullanılan temel SQL komutlarını baz alınarak oluşturulmuştur.Genel olarak kullanılan komutları içerir.

##Veritabanı ile bağlantı kurma

Local sunucuda kurulu olan MySQL komut satırı aracılığı ile bağlanabilmek için aşağıdaki komutu kullanmanız yeterlidir.

```mysql -u root -h 127.0.0.1```

###Veritabanı Oluşturma

Aşağıdaki komut aracılığı ile istediğiniz bir isim ile veritabanı oluşturabilirsiniz.

```CREATE DATABASE [veritabanıadı];```

###Oluşturulan Veritabanını Kullanma

Aşağıdaki komut aracılığı ile oluşturulan veritabanı içerisinde istediğiniz komutları kullanma imkanı tanınır.

```USE [veritabanıadı];```

###Tablo Oluşturma

Aşağıdaki komutu kullanarak veritabanı içerisinde tablo oluşturabilirsiniz.

``` CREATE TABLE [tabloadı] [tanımlama];```

###Tabloları Gösterme

Veritabanı içerisinde oluştruduğunuz veya varolan tabloları göstermeye yarar.

```SHOW TABLES;```

###Tablo Detaylandırma

Veritabanı içerisindeki tabloları ve bu tablolara ait olan değerlerin tanımlamalarını göstermektedir.

```DESCRIBE [tabloadı];```

###Tablo Silme

Veritabanı içerisinde bulunan herhangi bir tablonun silinmesinde kullanılır.

```DROP TABLE [tabloadı];```