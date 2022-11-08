create table personel_odev
(
id int,
isim varchar(20),
soyisim varchar(20),
email varchar (30),
ise_baslama_tarihi date,
is_unvani varchar(20),
maas int);

insert into personel_odev values (123456789, 'Ali', 'Can', 'alican@gmail.com', '10-APR-10', 'isci', 5000);
insert into personel_odev values (123456788, 'Veli', 'Cem', 'velicem@gmail.com', '10-JAN-12','isci', 5500);
insert into personel_odev values (123456787, 'Ayse', 'Gul', 'aysegul@gmail.com', '01-MAY-14', 'muhasebeci', 4500);
insert into personel_odev values (123456789, 'Fatma', 'Yasa', 'fatmayasa@gmail.com', '10-APR-09', 'muhendis', 7500);

select * from personel_odev where  maas<5000 or is_unvani='isci'

select * from personel_odev

--a) Yukarda verilen “personel” tablosunu olusturun
b) Tablodan maasi 5000’den az veya unvani isci olanlarin isimlerini listeleyin
select * from personel_odev where  maas<5000 or is_unvani='isci'
c) Iscilerin tum bilgilerini listeleyin
select * from personel_odev where is_unvani='isci'
d) Soyadi Can,Cem veya Gul olanlarin unvanlarini ve maaslarini listeleyin
 select is_unvani, maas from personel_odev where soyisim in ('Can','Cem','Gul')
e) Maasi 5000’den cok olanlarin emailve is baslama tarihlerini listeleyin
select email,ise_baslama_tarihi from personel_odev where maas>5000;
f) Maasi 5000’den cok veya 7000’den az olanlarin tum bilgilerini listeleyin
select * from personel_odev where maas>5000 or maas<7000;