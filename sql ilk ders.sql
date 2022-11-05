--Create--Tablo olusturma
Create table ogrenciler
(
id char (4),
isim_soyisim varchar(30),
not_ort real,
kayit_tarihi date
);

--varolan bir tablodan yeni bir tablo olusturma
create table ogrenci_ortalama
as
select isim_soyisim,not_ort
from ogrenciler;

--select - DQL-
select * from ogrenciler;
select * from ogrenci_ortalama;--bir tablodaki butun verileri cagirmak istersek * kullaniriz
select isim_soyisim, kayit_tarihi from ogrenciler;