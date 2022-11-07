Practice 6
-id'si 1003 ile 1005 arasında olan personel bilgilerini listeleyiniz
-D ile Y arasındaki personel bilgilerini listeleyiniz
-D ile Y arasında olmayan personel bilgilerini listeleyiniz
-Maaşı 70000 ve ismi Sena olan personeli listeleyiniz

CREATE table personel
(
id char(4),
isim varchar(50),
maas int
);

insert into personel values('1001', 'Ali Can', 70000);
insert into personel values('1002', 'Veli Mert', 85000);
insert into personel values('1003', 'Ayşe Tan', 65000);
insert into personel values('1004', 'Derya Soylu', 95000);
insert into personel values('1005', 'Yavuz Bal', 80000);
insert into personel values('1006', 'Sena Beyaz', 100000);
	
select * from personel;

select * from personel where id>= '1003' and id<='1005'';

select * from personel where maas= 70000 or isim='Sena Beyaz';