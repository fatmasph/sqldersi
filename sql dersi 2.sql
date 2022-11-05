CREATE TABLE tedarikciler
(
tedarikci_id int,
tedarikci_ismi varchar(20),
tedarikci_adres varchar(30),
ulasim_tarihi date
);

CREATE TABLE tedarikci_ziyaret
AS
SELECT tedarikci_ismi, ulasim_tarihi FROM tedarikciler;



CREATE TABLE personel
(
id char(10),
isim varchar(50) NOT NULL,
soyisim varchar(50),
email varchar(50),
ise_baslama_tar date,
maas int
) ; 
insert into personel(id,soyisim,isim) values (123456789,'isci','erol');
select from  personel


-- Primary Key oluşturma 1 yol
CREATE TABLE ogrenciler5
(
id char(4) PRIMARY KEY,
isim varchar(50) NOT NULL,
not_ortalamasi real,
adres varchar(100),
kayit_tarihi date
constraint ogrpk PRIMARY KEY (id)
);


-- Primary Key oluşturma 1 yol
CREATE TABLE ogrenciler5
(
id char(4) PRIMARY KEY,
isim varchar(50) NOT NULL,
not_ortalamasi real,
adres varchar(100),
kayit_tarihi date
);
-- Primary key oluşturma 2. yol
CREATE TABLE ogrenciler5
(
id char(4),
isim varchar(50) NOT NULL,
not_ortalamasi real,
adres varchar(100),
kayit_tarihi date,
CONSTRAINT ogrpk PRIMARY KEY (id)
);

“tedarikciler3” isimli bir tablo olusturun. Tabloda “tedarikci_id”, “tedarikci_ismi”,  “iletisim_isim” field’lari olsun ve “tedarikci_id” yi Primary Key yapin.
“urunler” isminde baska bir tablo olusturun “tedarikci_id” ve “urun_id” field’lari olsun ve
“tedarikci_id” yi Foreign Key yapin


create table tedarikciler3
(
tedarikci_id char(5),
tedarikci_ismi varchar(20),
iletisim_ismi varchar(20),
constraint tdrkpk primary key (tedarikci_id)
);

create table urunler
(
tedarikci_id char(5),
urun_id char(10),
constraint tdrkfk foreign key (tedarikci_id) references tedarikciler3(tedarikci_id)
)
Practice 5:
“calisanlar” isimli bir Tablo olusturun. Icinde “id”, “isim”, “maas”, “ise_baslama”  field’lari olsun. “id” yi Primary Key yapin, “isim” i Unique, “maas” i Not Null yapın.
“adresler” isminde baska bir tablo olusturun.Icinde “adres_id”, “sokak”, “cadde” ve “sehir” fieldlari olsun.  “adres_id” field‘i ile Foreign Key oluşturun.

create table calisanlar
(id char(9) primary key,
isim varchar(30) unique,
maas int not null,
ise_baslama date
)

CREATE TABLE adresler
(
adres_id char(10),
sokak varchar(10),
cadde varchar(10),
sehir varchar(10),
CONSTRAINT adrsfk FOREIGN KEY (adres_id) REFERENCES calisanlar(id)
)

INSERT INTO calisanlar VALUES('10002', 'Mehmet Yılmaz' ,12000, '2018-04-14');
INSERT INTO calisanlar VALUES('10008', null, 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10010', 'Mehmet Yilmaz', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10004', 'Veli Han', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10005', 'Mustafa Ali', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10006', 'Canan Yaş', NULL, '2019-04-12'); --maass not null oldugu icin kabul etmedi
INSERT INTO calisanlar VALUES('10003', 'CAN', 5000, '2018-04-14');
INSERT INTO calisanlar VALUES('10007', 'CAN', 5000, '2018-04-14'); --isim unique olmadigi icin kabul etmedi
INSERT INTO calisanlar VALUES('10009', 'cem', '', '2018-04-14');   --maas not null olmali kabul etmedi
INSERT INTO calisanlar VALUES('', 'osman', 2000, '2018-04-14'); --boslugu karakter gibi gorup kabul etti
INSERT INTO calisanlar VALUES('', 'osman can', 2000, '2018-04-14'); --primary key ayni gordu kabul etmez
INSERT INTO calisanlar VALUES( '10002', 'ayse Yılmaz' ,12000, '2018-04-14'); --primary key ayni olamaz
INSERT INTO calisanlar VALUES( null, 'filiz ' ,12000, '2018-04-14'); --primary key null olamaz





INSERT INTO adresler VALUES('10003','Mutlu Sok', '40.Cad.','IST');
INSERT INTO adresler VALUES('10003','Can Sok', '50.Cad.','Ankara');
INSERT INTO adresler VALUES('10002','Ağa Sok', '30.Cad.','Antep');
-- Parent tabloda olmayan id ile child a ekleme yapamayiz
INSERT INTO adresler VALUES('10012','Ağa Sok', '30.Cad.','Antep');
-- FK'ye null değeri atanabilir.
INSERT INTO adresler VALUES(NULL,'Ağa Sok', '30.Cad.','Antep');
INSERT INTO adresler VALUES(NULL,'Ağa Sok', '30.Cad.','Maraş');

select * from calisanlar
select * from adresler

create table sehirler2
(
alan_kodu int primary key,
isim varchar(20),
nufus int check (nufus>0)
);
insert into sehirler2 values (123,'erol',500)

select * from sehirler2

select isim from calisanlar where maas>5000;

select * from calisanlar where maas>5000;

select id,isim,maas from calisanlar where id='10004';

select * from calisanlar where id='10004';


CREATE TABLE ogrenciler6
(
id int,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int
);

INSERT INTO ogrenciler6 VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO ogrenciler6 VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO ogrenciler6 VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO ogrenciler6 VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
INSERT INTO ogrenciler6 VALUES(127, 'Mustafa Bak', 'Can',99);
INSERT INTO ogrenciler6 VALUES(127, 'Mustafa Bak', 'Ali', 99);

select * from adresler

delete from ogrenciler6 where id=124

delete from ogrenciler6 where isim='Kemal Yasa'

delete from adresler --tabloyu silmiyor tablonun icindeki tum verileri siliyor


CREATE TABLE talebeler
(
id CHAR(3) primary key,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int
);

CREATE TABLE notlar(
talebe_id char(3),
ders_adi varchar(30),
yazili_notu int,
CONSTRAINT notlar_fk FOREIGN KEY (talebe_id) REFERENCES talebeler(id)
on delete cascade
);

INSERT INTO talebeler VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO talebeler VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO talebeler VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO talebeler VALUES(126, 'Nesibe Yılmaz', 'Ayse',95);
INSERT INTO talebeler VALUES(127, 'Mustafa Bak', 'Can',99);

INSERT INTO notlar VALUES ('123','kimya',75);
INSERT INTO notlar VALUES ('124', 'fizik',65);
INSERT INTO notlar VALUES ('125', 'tarih',90);
INSERT INTO notlar VALUES ('126', 'Matematik',90);

DELETE from notlar where talebe_id='123';-- child
-- child tablodaki veriyi sildiğimiz zaman sadece child'daki veri silinir. parent taki veri silinmez.
DELETE from talebeler where id='126';-- parent
-- parent tablodaki veriyi sildiğimiz zaman child'daki veride silinir.
DELETE FROM talebeler; -- Parent tablo ile birlikte child tablo daki verileride siler

select * from notlar
select * from talebeler

drop table talebeler cascade

CREATE TABLE musteriler (
urun_id int,
musteri_isim varchar(50), urun_isim varchar(50)
);

INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (20, 'John', 'Apple');
INSERT INTO musteriler VALUES (30, 'Amy', 'Palm');
INSERT INTO musteriler VALUES (20, 'Mark', 'Apple');
INSERT INTO musteriler VALUES (10, 'Adem', 'Orange');
INSERT INTO musteriler VALUES (40, 'John', 'Apricot');
INSERT INTO musteriler VALUES (20, 'Eddie', 'Apple');

select * from musteriler where urun_isim='Orange' or urun_isim='Apple' or urun_isim='Apricot'
SELECT * FROM musteriler where urun_isim in ('Orange','Apple','Apricot')
SELECT * FROM musteriler where urun_isim not in ('Orange','Apple','Apricot')

--urun ismi orange olan ve musteri ismi Mark olan kaydi listeleyin
select * from musteriler where urun_isim='Orange' and musteri_isim='Mark'
select * from musteriler where urun_isim in ('Orange','Mark')
select * from musteriler where urun_isim='Orange' or musteri_isim='Mark'
--Between Condition
--Urun id'si 20 ile 40 arasi olanlar
select * from musteriler where urun_id>=20 and urun_id<=40
select * from musteriler where urun_id between 20 and 40
select * from musteriler where urun_id not between 20 and 40

CREATE TABLE calisanlar2
(
id int,
isim VARCHAR(50),
sehir VARCHAR(50),
maas int,
isyeri VARCHAR(20)
);

INSERT INTO calisanlar2 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar2 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar2 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar2 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar2 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko')

CREATE TABLE markalar
(
marka_id int,
marka_isim VARCHAR(20),
calisan_sayisi int
)

INSERT INTO markalar VALUES(100, 'Vakko', 12000);
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar VALUES(102, 'Adidas', 10000);
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);

select * from calisanlar2
select * from markalar

select isim,maas,isyeri from calisanlar2 where isyeri in (select marka_isim from markalar where calisan_sayisi>15000)

select isim,maas,sehir from calisanlar2 where isyeri in (select marka_isim from markalar where marka_id>101 )

-- Ankara’da calisani olan markalarin marka id'lerini ve calisan sayilarini listeleyiniz

select marka_id,calisan_sayisi from markalar where marka_isim in(select isyeri from calisanlar2 where sehir='Ankara' )


select sum(maas) as maas_toplam from calisanlar2

select max(maas) as en_yuksek_maas from calisanlar2

select min(maas) as en_dusuk_maas from calisanlar2

select avg(maas) as maas_ortalama from calisanlar2

select round(avg(maas),2) as maas_ortalama from calisanlar2

select count(maas) as maas_aded1 from calisanlar2

-- Her markanin id’sini, ismini ve toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.
select marka_id,marka_isim,(select count(sehir) from calisanlar2 where marka_isim=isyeri) as sehir_sayisi from markalar