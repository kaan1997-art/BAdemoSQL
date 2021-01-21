select adi, soyadi, convert (varchar(10),dogumtarihi, 104) as dogumtarihi from ogrenci

select convert(varchar,getdate(),120)

select 'Çaðýl Alsaç'as adi ,convert(varchar(10),getdate (),104) as bugun,
datediff(year, '1980-05-05', getdate()) as yas

select adi+ ' '+soyadi as adi, convert(varchar(10),getdate(),104) as bugun,
datediff(year, dogumtarihi, getdate()) as yas from ogrenci

select* from ogrenci order by adi --asc -- asc: ascending, desc: descending
select* from ogrenci order by adi desc

select* from ogrenci order by adi, soyadi
select* from ogrenci order by adi desc, soyadi desc

select* from ogrenci order by 5 --douguntarihi

select* from ogrenci order by 4 desc

use master
select* from Ogrencidb.dbo.Ogrenci

use Ogrencidb
select * from Ogrenci where Id= 7

select* from sehir where Id<= 34 order by adi

select* from sehir where adi='Ankara'

select* from sehir where Id>6 and Id<35

select*from sehir where Id<=6 or Id>=35

select* from sehir where Adi='Ankara' or adi='Ýstanbul'
select*from sehir where adi in('ankara','istanbul')
select*from sehir where Id in(6,34,35)

select*from sehir where adi not in('ankara','istanbul')

select*from sehir where Id between 6 and 35

select* from ogrenci where kimlikno is not null
select * from ogrenci where kimlikno is null

select*from sehir where adi like 'ankara' --=
select* from sehir where adi like 'an%'
select* from sehir where adi like '%ara'
select* from sehir where adi like '%ka%'
select* from ogrenci

select count (*) as kayýtsayýsý from ogrenci
select count (adi) as kayýtsayýsý from ogrenci
select count (kimlikno) as kayýtsayýsý from ogrenci

select sum(yas) as yaslarýntoplamý from ogrenci
select sum(yas) / count(*) as yaslarýnortalamasý from ogrenci
select avg(isnull (yas,0)) as yaslarýnortalamasý from ogrenci

select isnull(yas, 0) yas from ogrenci

select max(yas) maxiumumyas from ogrenci
select min(yas) minimumyas from ogrenci
select (isnull (null,''))

select top 2 *from sehir




